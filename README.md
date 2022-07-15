# ***The Silver Tsunami - Succession Planning for Pewlett-Hackard***
_____________________________________________________________________________________________________________________________
As with many companies in the United States and Globally - planning for the waves of retirements within the  Baby-Boomer Generation is hitting home.  Economic swings, COVID and other health concerns, as well as corporate financial and cultural changes provides an active environment for change.  The result is that these waves of retirements is impacting companies harder than in the past. 
Pewlett-Hackard is among the many large firms focusing their efforts on identification of critical knowledge and skill holders gaps that will arise with the objective of developing plans to start stemming the waves of shock and realization of the challenges the organization is facing. 
In order to address these potential retirements, this project has been commissioned to take the initial raw count assessments and work in a Postgres environment linking valuable information from 6 large databases of employees and employment information in order to make an informed succession plan.  A critical output includes identifying a population of the potential retirees and target them for participation in the development and execution of a mentorship program to help bridge the knowledge/skill gap in order to set the new generation of leaders and the company for continued success.  
_____________________________________________________________________________________________________________________________
## Project overview
This project is deigned to link 6 large HR and Employee databases via PGAdmin and SQL in order to provide the following:
- A large Retirement database linking critical employee measures: employee_no, Titles, Names, Dates of employment, and Titles/Roles within the organization for all employees.
- Through refinement and focus on the active employee population born between 1952-1955, identify the immediate impacts to the company and short term risk to the organization. 
- Provide targeted outputs via tables linking the retirement populations to department level impacts, Title/role impacts.
- Further refine the dataset to focus on employees born in 1965 (the end of the ba by boom) to develop a tabular listing of potential employees for the mentorship program development and execution.  Utilizing this group to pay it back to the organization and focus on the future success and development of employees to fill our critical skill/knowledge spaces within the organization.
_____________________________________________________________________________________________________________________________
##Analysis and Findings
Unfortunately the Retirement wave is already in the immediate horizon. Preliminary analysis developed a table of potential retirees across the organization of 41,380 persons.  Unfortunately for Pewlett Hackard and the houndreds of thousands of employees world-wide, the large numbers are still staggering.  After further refinement of the data, we can reduce the potential number to 33118 employees.  See Notes and excerpts below.
Further delving into the departments and roles within the organization, we find 9 total departments that will potentially be impacted by High retirements.  The top 3 are:
- Development - 9281
- Production - 8174
- Sales - 5860 
If we look further into the data, the critical roles/skill sets within the organization that will be hit hardest with be in the senior Engineering and Senior staff levels with just over 55,000 positions that could potentially retire. When junior engineering and staff levels are added, levels are added nearly 75% of the potential retirements could come from this population.
Next a drill down was conducted focusing on potential retirees born in 1965, the end of the baby boom.  This group was targeted for inclusion in a mentorship program focusing transitioning skills and knowledge to the current employees not retiring and needing to step up and fill the gaps that would be left.  This analysis resulted in a preliminary list of 1549 individualsin the senior Staff/Engineering and staff/engineering ranks primairly which is consistent with the projected gaps as well.
Finally - looking at next steps.  An additional iteration was conducted, repeating the analysis package for a larger population.  This time the targeted retiree population was Boomers born between 1952 to 1965. The population was selected to take a look at the big picture.  What does the total impact of the Boomer generation look like going forward?  

## Key Takaways
At we investigate and attempt to predict retirement trends, it is important to recognize that these types of analysis can provide a snapshot into the potential retirements and gaps that potentially could occur.  This type of analysis is utilized by many as the first line predictors along with economic and health care costs for potential gap years in coverages or delays in income to meet target ages for participation in pension, medicare, and other retirement income streams/restrictions.  The other context to consider is personal preferences.  Each person is an individual, and while completing and analysis such as this, we need to continue to have our aging/retiring population feel valued for their continued service and willingness to stay on or support the organization through mentorship.
From the analysis side - linkages through the tables and having a good understanding of primary and foreign keys is absolutely critical and the Database maping process is a key tool for keeping the relationships between the data in mind.  It's very easy to go down a rabit hole, believe you have the solution and when checking the data, find surprising slight shifts just in the ordering and combining of the data.
_____________________________________________________________________________________________________________________________



