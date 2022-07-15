-- Deliverable #1 - Retirees by title. 
-- Create a table with ee#, first & last name, title, from date,to_date & salary note added salary as a 3 way join.👍
DROP TABLE Retirees_by_title;

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
    t.to_date,
	s.salary
INTO Retirees_by_title 
FROM employees as e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	INNER JOIN salaries as s
	ON (t.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31') 
ORDER BY emp_no;

SELECT * FROM Retirees_by_title 

--  Clean data to retain most recent title per employee with Distinct ON and Order By
DROP TABLE unique_titles;

SELECT DISTINCT ON (emp_no) emp_no,
        first_name,
        last_name, 
        title,
        to_date
INTO unique_titles
FROM (
	SELECT emp_no,
		first_name,
		last_name,
		to_date,
		title, ROW_NUMBER() OVER
		(PARTITION BY (emp_no)
        ORDER BY to_date DESC) rn
         FROM retirees_by_title
		) tmp WHERE rn = 1  
ORDER BY emp_no;

SELECT * FROM unique_titles;

-- group by title to show how many of each title will retire 
DROP TABLE retiring_title;

SELECT COUNT(title), title
INTO retiring_title
FROM unique_titles as ut
Where ut.to_date = ('9999-01-01')
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_title as rt

--Deliverable2. Mentorship Eligibility table with ee#, first & last name, birth_date, from_date, to_date, & title
-- For retiring employees born between 1/1/1965 & 12/31/1965

DROP TABLE mentorship_eligibility;
SELECT DISTINCT ON (emp_no)
    e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
    de.dept_no,
    t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
	   	  ON (e.emp_no = de.emp_no)	
    INNER JOIN titles as t
	   	  ON (e.emp_no = t.emp_no)	
    WHERE (de.to_date = '9999-01-01')
	   AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;	

SELECT * FROM mentorship_eligibility as me;

SELECT COUNT(emp_no)
FROM mentorship_eligibility

-- Mentors by Department - went back and added de.dept_no to the columns selected
--for mentor_elibibilityto assess mentors by dept no.
SELECT COUNT(emp_no), dept_no
FROM mentorship_eligibility as me
GROUP BY dept_no;


-- Mentors by Titles 
SELECT COUNT(emp_no), title
FROM mentorship_eligibility as me
GROUP BY title;

--_________________________________________________________________________________________________________
--Deeper Dive

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
    t.to_date,
	s.salary
INTO Retirees_by_title_expanded 
FROM employees as e
	INNER JOIN titles as t
	ON (e.emp_no = t.emp_no)
	INNER JOIN salaries as s
	ON (t.emp_no = s.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1965-12-31') 
ORDER BY emp_no;

SELECT * FROM Retirees_by_title_expanded 

--  Clean data to retain most recent title per employee with Distinct ON and Order By
DROP TABLE unique_titles_expanded;

SELECT DISTINCT ON (emp_no) emp_no,
        first_name,
        last_name, 
        title,
        to_date
INTO unique_titles_expanded
FROM (
	SELECT emp_no,
		first_name,
		last_name,
		to_date,
		title, ROW_NUMBER() OVER
		(PARTITION BY (emp_no)
        ORDER BY to_date DESC) rn
         FROM retirees_by_title_expanded
		) tmp WHERE rn = 1  
ORDER BY emp_no;

SELECT * FROM unique_titles_expanded;

-- group by title to show how many of each title will retire 
-- in expanded group of current employees born 1952-1965

SELECT COUNT(title), title
INTO retiring_title_expanded
FROM unique_titles_expanded as ute
Where ute.to_date = ('9999-01-01')
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_title_expanded as rte

-- Mentorship Eligibility table with ee#, first & last name, birth_date, from_date, to_date, & title
-- For retiring employees born between 1/1/1952 & 12/31/1965


SELECT DISTINCT ON (emp_no)
    e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
    de.dept_no,
    t.title
INTO mentorship_eligibility_expanded
FROM employees as e
	INNER JOIN dept_emp as de
	   	  ON (e.emp_no = de.emp_no)	
    INNER JOIN titles as t
	   	  ON (e.emp_no = t.emp_no)	
    WHERE (de.to_date = '9999-01-01')
	   AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;	

SELECT * FROM mentorship_eligibility_expanded as mee;

SELECT COUNT(emp_no)
FROM mentorship_eligibility_expanded

-- Mentors by Department - went back and added de.dept_no to the columns selected
--for mentor_elibibilityto assess mentors by dept no.
SELECT COUNT(emp_no), dept_no
FROM mentorship_eligibility_expanded as mee
GROUP BY dept_no;


-- Mentors by Titles 
SELECT COUNT(emp_no), title
FROM mentorship_eligibility_expanded as mee
GROUP BY title;

