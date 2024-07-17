# Cholera Outbreak, Stockholm (1853) Analysis
![](images/Cholera_image.webp)
<br />

## Table of Contents
- [Project Overview](#project-overview)
- [About The Dataset](#about-the-dataset)
- [Tools Used](#tools-used)
- [Visuals in Power BI:](#visuals-in-power-bi)
- [Interact With Power BI Dashboard Report](#interact-with-power-bi-dashboard-report)
- [Conclusion](#conclusion)
<br />

## Project Overview
### Introduction:
The cholera epidemic in 1853 known as the Kolera Katerina in Stockholm, Sweden became such a historical event when the two biggest social trends that characterized the modern world at the middle of the nineteenth century, the growth of cities and the crisis of health, prepare the field to demonstrate the vulnerability of a growing capital. The outbreak which was first observed in the district of Katarina expended very quickly in the area and demonstrated very dismal outcomes and deficiencies in sanitation and health care systems.

It relates to the study of the historical background of Stockholm from the nineteenth century as part of research. Thus, since Sweden has well-preserved church records providing access to detailed information about, for instance, pandemic occurrences due to the availability of preserved church records, this research became possible. The subject matter for data collection in this case was the large cholera outbreak that began in late August 1853 to the month of November in the same year. Approximately three percent of the population would be dead within two weeks of the infection. For instance, poor parts of the city, like S:Investment houses such as t Catherine parish were severely affected. The project shall therein endeavour to reveal some basic facts about the infamous 1853 outbreak, and more specifically about the victims’ demographic characteristics and the number of cases reported in the period.

### Problem Statement
The data analysis is supposed to explore the distribution of the Cholera Outbreak in Stockholm in 1883, as well as overall demographic trends, in order to determine the key factors that contributed to the epidemiological processes and outcomes. Specifically, the study seeks to address the following research questions:Specifically, the study seeks to address the following research questions:
- From the available data, one may be asking how many cases were recorded in the period under analysis.
- Who are victims? What is the average age of victims?
- Lesser known is the fact that 13 men and boys were killed in the process, and to some extent what this reveals about the organization’s gender arrest dynamics.
- The overall count of the number of women affected by the violence is?
- I am particularly concerned with the number of cases of Cholera by the gender of the patients, by month.
- How does it fare, the trend of Cholera cases by gender on a daily basis?

### Expected Finding:
- However, in relation to the outlined problem statement regarding the cholera outbreak of 1853 in Stockholm several important findings are expected. First, the project seeks to identify the total number of cases recorded in the selected period of analysis to gain a true extent of the outbreak and its effects on the populace.

- Secondly, the study endeavours to establish the mortality rate of cholera patients in this period during the epidemic to identify the age demographic of the most affected vulnerable group.

- Moreover, the field work also aims at developing the probative data of the total number of male and female separately in order to better determine whether gender has the tendency to predispose one to the deadly disease of cholera to create a better intervention schedule.

- Also, the trend of the cholera cases by gender in terms of both monthly and daily will be determined in order to understand the changes in the rate of infection of the disease among the male and female during the period under analysis.

Through the synthesis of these anticipated findings the project would add value in understanding the epidemiological trends of the Kolera Katerina outbreak so that there can be better formulation of decisions and policies concerning similar historic public health emergencies.
<br />
<br />

### About The Dataset
The data is collected from hand-written church records. The church was responsible for all population registration until around 1870. Only death records have been analyzed. Since Cholera has around 40% CFR we can assume a larger number of affected but surviving individuals.

All data can be found at the National Archive of Sweden. See [here](https://sok.riksarkivet.se/digitala-forskarsalen) (press "Other languages" for an English version). Another important source for further analysis is "Sundhets-collegii underdåniga berättele om 
Kolerafarsoten i Sverge, 1853" which is a broad overview of the epidemic situation in all of Sweden. This contemporary report can be found at Statistics Sweden (SCB): See [link](https://share.scb.se/ov9993/data/historisk%20statistik/Officiell%20statistik%201811-1860%2FHälso-%20och%20sjukvården1851-1860%2FSundhetskollegii-underdaniga-berattelse-om-Medicinalverket-i-riket-1853-Bihang.pdf). The data is in a .csv file format and you can view the dataset [here](kolera-katarina-1853.csv). 

The dataset contains 8 fields (translated to English Language) and 249 rows of data. Below is a data dictionary of this dataset:

| Table                              | Field                    | Description                            |            
|:-----------------------------------|:------------------------ |:-------------------------------------- |
|Kolera-Katarina-1853.csv            | Date_of_Birth            | This column, therefore, holds the date of birth to the people impacted on by the cholera outbreak. It presents data on the age of the people and this is an important factor that forms the basis of demographic studies.    |
|                                    | Name                     | This column has the names of the affected persons with cholera. They can track instances of implementation at the individual level allowing for following up on the particular cases.     |
|                                    | Profession               | This column captures the profession or occupation of the affected persons in the cholera incident. Vaccination also helps in the offering of information regarding the population affected as well as the social and economic factors associated with them.         |
|                                    | Gender                   | This column would represent the sex of the people that got affected by this cholera outbreak. It makes it possible to compare genders concerning the question and the outbreak notifying on the differences or inequality in the vulnerability to such diseases or outcomes of the infected ones.         |
|                                    | Age                      | This column holds the age of the cholera afflicted people. It delivers a quantitative analysis of the age distribution of the cases that is vital in the study of the incidence of diseases.        |
|                                    | Assembly                 | This column indicates the jurisdictional or managerial unit that the mentioned people pertain to. It assists in sorting the data according to the geographical area that may be important when analyzing the data in order to find out if cases are concentrated in certain areas.        |
|                                    | Archive_Ref              | This column shows links to the available source of the archival materials/documents that can be associated with the cholera outbreak. It creates awareness to the sources of the data so that the reader can verify the information given in the analysis.       |
|                                    | Page                     | This column indicates the page number/s where in the particular archival documents/source, information pertaining to the cholera outbreak is found in. It aids in searching for and identifying certain record or data points within the source documents.         |
<br />

### Skills Utilized
1. Data Cleaning
2. Data Visualiziation
3. Descriptive Analytics
4. Critical Thinking and Problem Solving
5. Communication and Reporting
<br />

### Tools Used
1. MS Sql Server
    - Was used to:
        1. Extract,
        2. Clean,
        3. Transform, and
        4. Load all the datasets for this analysis.
           
2. Power BI (Was used to create reports and dashboard for this analysis)
    - The following Power BI Features were incorporated:
        1. DAX,
        2. Quick Measures,
        3. Filters,
        4. Tooltips
<br />

### ETL Process using MS Sql Server:
1. Translated all the colume headers in __Swedish language__ to -__English__ for easy understanding.
2. Transformed the column types in all the tables to the right column types.
3. Translated rows in the __Name__ and __Profession__ columns from __Swedish language__ to __English language__ for a better understanding of the table data (did this in excel with the help of a language translation site because of the volume of data rows) .
4. Translated all the rows of the __Gender__ and __Assembly__ columns from __Swedish language__ to __English language__ for a better understanding of the table data.
5. Added a new column __"Age_Band"__ from the __"Age"__ column to enable me group the victims into __age brackets__ using the "Update" and "Set query".
6. Added another column __"Day"__ from the __"Date_of_Death"__ column to display days of the week (sunday - saturday) using the "Update" and "Set query" in SQL.
7. Re-ordered all the columns in the table accordingly.

You can take a look at the raw data and the sql query screenshot below:
<br />

Raw Data Screencshot                                                               |                       
:---------------------------------------------------------------------------------:|
![](images/Raw_Data.png)

You can preview the raw data file [here](kolera-katarina-1853.csv)
<br />

Sql Query Screenshot                                                               |                       
:---------------------------------------------------------------------------------:|
![](images/MS_Sql_Server_Screenshot.png)

You can preview the MS Sql Server query file [here](Cholera_Outbreak_Stockholm_1853_Project.sql)
<br />
<br />

## Data Modelling
No modelling was required since we had just one table for this analysis.
<br />
<br />

## Visuals in Power BI:
![](images/Cholera_Outbreak_Stockholm_1853_Analysis_Dashboard.jpg)
<br />
<br />

#### Project Analysis:
From the analysis, our problem statement can be given answers to as analyzed below:
- The total number of cases within the analysis period was __248.__
- The average age of the victims was __34.__
- The total number of male victims within this analysis period was __118.__
- While the total number of female victims was __130.__
<br />
<br />

- <img src="images/Age_Distribution_of%20_Cholera_Cases.jpg" width="500">

- **Age Distribution of Cholera Cases:**
- Analyzing the age factor concerning the perennial growth rate, we could have concluded that one-year-old infants and below were at a higher risk of getting the cholera epidemic and, therefore, had the most significant number of the cholera epidemic, one which was about thirteen, followed by other infants in the age range of 2 – 4 years, which had a high number of about twenty-three. The second population that suffered numerous cases was young adults after the children. The victims aged 33 withnessed 10 cases those with 34 years had 7 cases while those 37 years of age had 8 cases. Youths within the age group of 20-39 yrs contracted this scourge most. Out of the people of the working-age, 28% follows also at the age of 40 - 60yrs of age, the old aged groups and the teenagers also follow with a certain percentage.
<br />
<br />

- <img src="images/Gender_Distribution_of_Cholera_Cases.jpg" width="300">

- **Gender Distribution of Cholera Cases:**
- Wherein in our analysis, the female gender dwindled more in this period of analysis compared to the male gender, it resulted in 126 victims sharing 52.28 percent of the count. The males have counted 115 victims sharing 47.72 percent of the count. Hence, we would like to ask, why did we record more deaths of the females than the males? Is there a reason for that? From our analysis, the reasons are attributed to the factors stated below:

        1. Women, in many societies at that time, played different roles and thus led lives that differed from men in a number of ways. For instance, they were more involved in caring and household activities, which may have increased their exposure to contaminated water- or food-borne sources, leading to a higher risk of cholera.

        2. Access to healthcare differed between the two sexes. Quite probably, social norms or economic constraints limited the females' access to medical treatment, thus entailing delays or poor health care in case of cholera symptoms.

        3. The other reasons may be biological gender-specific differences. This means that hormones or other genetic predispositions could have been influenced susceptibility to cholera or the severity of its symptoms.

        4. In the event that there were certain occupations which were peculiarly held by women during that time period in Stockholm, such as domestic work or certain kinds of factory labor, they likely would have had increased exposure to contaminated environments and thus potentially higher rates of infection.

        5. The difference in hygiene behavior of both sexes—should any exist—may explain differences in cholera transmission. For example, if women were responsible for food preparation or childcare, they may have been more likely to come into contact with contaminated surfaces or objects.

        6. Cultural norms and expectations, such as acting modest or deferring to male authority figures, may have been a steady determinant for a woman seeking timely medical care or adhering to preventive measures against cholera.
<br />
<br />

- <img src="images/Age_Band_of_Cholera_Cases.jpg" width="300">

- **Age Band Distribution of Cholera Cases:**
- From the Age Band distribution, we could see that Young Adults (20 - 39yrs) had the highest number of cholera cases of 80, while the Mid Aged (40 - 60yrs) follows witb 78 cases. The Children (less than 1 - 12yrs) follows with 52 cases, the Old Aged (60+yrs) with 25, and lastly, the Teenagers (13 - 19yrs) with 6 cases. We may also go further to analyze this age band case tolls and what could have influenced the numbers among the different age bands. From further analysis, i was able to deduce the following poits:

   1. __Young Adults (20 - 39yrs):__ The high number of cases in this age group could be attributed to factors such as increased 
      mobility, social interaction, and exposure to contaminated environments. Young adults may have been more likely to engage in 
      activities that put them at risk of cholera transmission, such as working in crowded urban areas or living in densely 
      populated neighborhoods with inadequate sanitation infrastructure.

   2. __Mid Aged (40 - 60yrs):__ Similar to young adults, individuals in this age group may have been exposed to cholera through 
      occupational activities or household responsibilities. Additionally, mid-aged individuals might have faced challenges in 
      accessing healthcare or adhering to preventive measures due to family obligations or work commitments.

   3. __Children (less than 1 - 12yrs):__ Children are often more vulnerable to infectious diseases due to their developing immune 
      systems and higher likelihood of exposure in communal settings such as schools or daycare centers. Poor hygiene practices, 
      inadequate sanitation facilities, and limited access to clean water could have contributed to the relatively high number of 
      cholera cases among children.

   4. __Old Aged (60+yrs):__ Older adults may have been at increased risk of cholera complications due to age-related decline in immune 
      function and higher prevalence of underlying health conditions. Limited mobility, social isolation, and challenges in 
      accessing healthcare services could have further exacerbated their vulnerability to cholera infection.

   5. __Teenagers (13 - 19yrs):__ The low number of cases among teenagers could be attributed to factors such as healthier immune 
      systems, adherence to hygiene practices, and potentially lower exposure to contaminated environments compared to other age 
      groups. However, socio-economic factors, including access to clean water and sanitation facilities, may have also played a 
      role in shaping the incidence of cholera among teenagers.
<br />
<br />

- <img src="images/Cholera_Cases_Trend_Across_Months_by_Gender.jpg" width="500">

- **Cholera Cases Trend Across Months by Gender:**
- September had the highest number of cases trend by gender and month with 178 cases of which 91 were females and 87 were males. The month of October recorded 40 cases, 26 of which were females, while 14 were males. 10 female cases were recorded in the month of August and males were 2, totaling 12 cases. In November, 7 female cases were recorded and 4 male cases, totaling them to 11 cases. We can dig deeper into this trend in our analysis to generate more insight into factors that may have influenced these large figures within the specified months:

   1. __September:__ The highest number of cases occurred in September, with 91 females and 87 males affected. This could be attributed 
      to various factors, including environmental conditions favoring cholera transmission, such as warmer temperatures or increased 
      rainfall, which are conducive to bacterial growth in water sources. Additionally, socio-economic factors such as overcrowded 
      living conditions or inadequate sanitation infrastructure may have contributed to heightened transmission rates during this period.

   2. __October:__ While the number of cases declined in October compared to September, a significant proportion of cases still 
      occurred, with 26 females and 14 males affected. Factors influencing the continuation of the outbreak into October could include 
      delayed implementation of public health interventions, ongoing contamination of water sources, or challenges in accessing clean 
      water and sanitation facilities in affected areas.

   3. __August and November:__ Although fewer cases were reported in August and November compared to September and October, they still 
      contributed to the overall burden of the outbreak. The occurrence of cases in August may indicate the initial stages of the 
      outbreak, while cases in November suggest ongoing transmission or localized outbreaks. Factors such as population movements, 
      migration patterns, or changes in weather conditions could have influenced the distribution of cases during these months.
<br />
<br />

- <img src="images/Cholera_Cases_Trend_Across_Days_by_Gender.jpg" width="500">

- **Cholera Cases Trend Across Days by Gender:**
- From the trend of Cholera cases across the days of the week by gender within this analysis period, our insight shows that Thurdays witnessed the highest number of cases with 44 cases, 25 of which were females and 19 were males. Tuesdays follows with 24 female cases and 20 male cases, making them 44 cases. Mondays and Saturdays recorded same figures of 21 females and 16 males respectively, a total of 37 apiece. Fridays follows next with a total of 26 cases, 15 from the female folks, while 11 were from the male folks. Lastly, Sundays witnessed a total of 21 cases, 10 females and 11 males respectively. We may also want to know what influenced these great number of cholera cases on these diffrent days of the week. My further analysis raised some insights:

   1. __Thursdays:__ The highest number of cases occurring on Thursdays could be attributed to various factors, including behavioral 
      patterns such as increased social activities or gatherings leading to higher exposure to contaminated food or water sources. 
      Additionally, factors such as food preparation practices, sanitation conditions, or water supply disruptions may contribute to 
      heightened transmission rates on Thursdays.

   2. __Tuesdays:__ Similar to Thursdays, Tuesdays also witnessed a relatively high number of cases, potentially reflecting similar 
      behavioral or environmental factors influencing cholera transmission. Increased mobility or commerce activities, such as market 
      days or transportation of goods, could contribute to higher exposure levels on Tuesdays.

   3. __Mondays and Saturdays:__ The occurrence of similar numbers of cases on Mondays and Saturdays suggests that certain routine 
      activities or environmental conditions may be contributing to cholera transmission on these days. Factors such as communal 
      gatherings, religious ceremonies, or variations in water supply and sanitation services could influence the distribution of cases 
      on Mondays and Saturdays.

   4. __Fridays and Sundays:__ While Fridays witnessed a slightly higher number of cases compared to Sundays, both days had relatively 
      lower case counts compared to Thursdays and Tuesdays. Factors such as reduced commercial activities, changes in social behaviors, 
      or improved access to healthcare services on weekends may contribute to the lower number of cases on Fridays and Sundays.
<br />
<br />

## Interact With Power BI Dashboard Report
You can interact with this report [here](https://app.powerbi.com/view?r=eyJrIjoiNjkxZmMxMDYtMWMyYS00Yjc3LTlkYjItNDgzNjBhM2Q3ZjU5IiwidCI6IjdlYzI5NjU5LTNjZjItNGYzZi1hYmIzLWE3MjJlZGY3ZmYyZCJ9).The dashboard report on Cholera Outbreak, Stockholm, 1883 Analysis displays an interactive visual of the project in power BI.
<br />
<br />
<br />
<br />

## Conclusion
- In summary, the analysis of the cholera outbreak in Stockholm in 1883 shows how factors like sanitation, education, and collaboration influence disease spread. Understanding these patterns helps us learn how to prevent outbreaks in the future. By improving hygiene, educating the public, and working together, we can better protect communities from diseases like cholera.

- It also teaches us important lessons about preventing diseases. By keeping things clean, teaching people how to stay healthy, and working together, we can stop outbreaks from happening. It's a reminder that simple actions can make a big difference in keeping communities safe and healthy.
<br />
<br />

## Thank You For Following Through!
