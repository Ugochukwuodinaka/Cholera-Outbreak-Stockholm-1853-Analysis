# Cholera-Outbreak-Stockholm-1853-Analysis
![](Cholera_image.webp)

## Project Overview
### Introduction:
The cholera outbreak of 1853 in Stockholm, Sweden, colloquially known as "Kolera Katerina," represents a crucial moment in the city's history, where the convergence of urbanization and public health crises laid bare the vulnerabilities of a rapidly expanding metropolis. Originating in the Katarina neighborhood, the outbreak swiftly swept through the city, leaving devastation in its wake and exposing systemic shortcomings in sanitation infrastructure and healthcare provision.

This is part of research work on the history of Stockholm in the 19th century. Since Sweden has well-preserved church archives this permits getting detailed information about e.g. pandemic events. In this data collection, Information was gathered about the large cholera outbreak in late August 1853 to the month of November, 1853. About 3% of the population died within a couple of weeks. Poor parts of the city, such as S:t Catherine parish was hit very hard. This project endeavors to illuminate some key information of the 1853 outbreak, delving into the demography of the victims and the cases trend by within the period.

### Problem Statement
- What is the total number of cases within the scope of the period of this analysis?
- What is the average age of victims?
- What is the total number of male victims?
- What is the total number of female victims?
- What is the cholera cases trend by gender monthly?
- What is the cholera cases trend by gender daily?

### Expected Finding:
- In addressing the outlined problem statement concerning the cholera outbreak of 1853 in Stockholm, several key findings are anticipated. Firstly, the project aims to ascertain the total number of reported cases within the specified period of analysis, offering a comprehensive understanding of the outbreak's scale and impact on the population.

- Secondly, the investigation seeks to determine the average age of cholera victims within this period during the outbreak, providing insights into the demographic profile of those most affected by the disease.

- Additionally, the project endeavors to quantify the total number of male and female victims separately, shedding light on potential gender disparities in susceptibility to cholera and informing targeted interventions.

- Moreover, the analysis will elucidate the cholera cases trend by gender on both a monthly and daily basis within the period, enabling the identification of temporal patterns and variations in infection rates among males and females throughout the course of the outbreak.

By synthesizing these expected findings, the project aims to contribute valuable insights into the epidemiological dynamics of the Kolera Katerina outbreak, facilitating informed decision-making and enhancing our understanding of historical public health crises.

### Tools Used
1. Power Query Editor
    - Was used to:
        1. Extract,
        2. Transform, and
        3. Load all the datasets for this analysis.
           
2. Power BI (Was used to create reports and dashboard for this analysis)
    - The following Power BI Features were incorporated:
        1. DAX,
        2. Quick Measures,
        3. Page Navigation,
        4. Filters,
        5. Tooltips

### ETL Process using the Power Query Editor:
1. Ttranslated all the colume headers in Swedish language to English for easy understanding
2. Translated all the rows of the Profession, Gender, and Assembly from Swesih language to English for a better understanding of the table data.
3. Transformed the column types in all the tables to the right column types.
4. Added a new column "Age_Band" from the "Age" column to enable me group the victims into age brackets using the "If Statement".
5. Changed the "Date_of_Death" column type to "date".
6. Added another column "Day" from the "Date_of_Death" column to display days of the week (sunday - saturday).
6. Re-ordered all the columns in the **flights** table accordingly.
7. You can take a look of our final query editor screenshot below:
   
![](Power_Query_Editor.png)

## Visuals in Power BI:
![](Cholera_Outbreak_Stockholm_1853_Analysis_Dashboard1.jpg)

#### Analysis:
From the analysis, our problem statement can be given answers to as seen below in this analysis:
- The total number of cases within the analysis period is 248.
- The average age of victims is 34.
- The total number of male victims within this analysis period is 118
- While the total number of female victims is 130.
- Looking at the age distribution of victims, we could see that infants who were a year and below fell the highest victim to the cholera epidemic with about 13 infants, with other infants within the age of 2 to 4 having a large number of 23. 
- From the dataset and within the 4 months of our analysis, which is August - November, the month of September withnessed the highest number of Cholera cases of 178, 87 of which are males while 91 victims are females. 
