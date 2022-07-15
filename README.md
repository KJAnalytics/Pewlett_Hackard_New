# *** The Silver Tsunami - Succession Planning for Pewlett-Hackard***
_____________________________________________________________________________________________________________________________
As with many companiesin the United States and Globally - planning for the wave of retirements with the aging Baby-Boomer Generation is hitting home for Pewlett Hackard. Economic changes, COVID/health concerns, and corporate climate/cultural changes are hitting companies harder with rising retirements than in the past. Pewlett-Hackard is among those companies desiring to focus their efforts on identifying critical knowledge/skill holders and how to manage the organization without experiencing wave after shock waves of Boomer retirements potentially resulting in gaping holes in the organization. 

In order to address these potential losses, the Silver Tsunami project has been commissioned to work in a Postgres environment linking valuable information from 6 large databases of employee departmental, and financial information to understand the risk potential. All of this is geared towards informed succession planing and development of a mentorship program where critical positions will have targeted mentorship in order to set up the company for success with a new generation of leaders.

______________________________________________________________________________________________________________________________
## Project Overview
This project is designed to link 6 large HR and Employee databases via PGAdmin and SQL in order to provide the following:
- A Databse relationshp diagram - planning tool to layout the relationships between the imported tables and define primary and foreign keys for the data analysis.
- A large Retirement database linking critical employee measures: employee_no, Titles, Names, Dates of employment, and Titles/Roles within the organization for all employees.
- Through refinement and focus on the active employee population born between 1952-1955, identify the immediate impacts to the company and short term risk to the organization. 
- Provide targeted outputs via tables linking the retirement populations to department level and Title/role impacts.
- Further refine the dataset to focus on employees born in 1965 (the end of the baby boom) to develop a tabular listing of potential employees for the mentorship program development and execution.  Utilizing this group of retiring employees "to pay it back" to the organization and focus on development of current employees to fill critical skill/knowledge spaces within the organization by providing this mentorship to the next generation of leaders. 
______________________________________________________________________________________________________________________________
## Analysis and Findings
Unfortunately the Silver Tsunami is already in the immediate horizon. The preliminary analysis developed a table of potential retirees across the organization of 41,380 persons.  Fortunately for Pewlett Hackard and the houndreds of thousands of employees world-wide, the large numbers are still staggering.  After further refinement of the data, we can reduce the potential number to 33118 employees. 

Further evaluation of the potential retirement population by investigating department and role/title implications, identifies the high potential risk areas.
  - Top 5 departments with potential retirees include:
    - Development         9281 employees
    - Production          8174
    - Sales               5860
    - Customer Service    2597
    - Research            2413

 Focusing on roles within the potential retirees, Senior Staff and Senior Engineering positions are areas with the highest risk for knowledge and skill losses.  55,000 potential retirees could come from these ranks within the organization.  If Staff/Engineering positions are added to the pool of retirees, the number excees 60,000 employees taking the overall impact within this population of roles to 75% of the retirees.  
 
 Consistent with the role/title distribution of potential retirees, the potential mentorship list of employees mirrors the role/title distribution.  After further reducing the mentorship list to employees born in 1965 (the end of the baby boom), the final result was 1549 employees that could be considered for this program.  The ranks of this population is mainly technical and engineering level positions as discussed above.
