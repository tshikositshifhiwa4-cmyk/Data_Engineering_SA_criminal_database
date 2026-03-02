--South Africa Criminal Database - 30 SQL Questions and ANSWERS
--1.Display all records from the CriminalCases table. 
SELECT *   FROM [SA_crime_data].[dbo].[south_africa_criminal_database];

--2. Count the total number of cases in the table. 
SELECT COUNT (*)  FROM [SA_crime_data].[dbo].[south_africa_criminal_database];

--3. Count the number of cases in each province. 
SELECT DISTINCT Province,
                COUNT (*) AS number_of_cases
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
 GROUP BY Province;

 --4. Retrieve all cases where the crime type is Fraud
  SELECT CrimeType,
        COUNT (*)
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
WHERE CrimeType = 'Fraud'
 GROUP BY CrimeType;

 --5. Count the number of cases for each crime type. 
  SELECT DISTINCT CrimeType,
                COUNT (*)
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
 GROUP BY CrimeType;

 --6. Display all cases classified as High or Critical risk. 
   SELECT RiskLevel,
        COUNT (*)
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
 WHERE RiskLevel = 'High' OR RiskLevel = 'Critical'
 GROUP BY RiskLevel;

 --7. Calculate the average Financial Score of all suspects.
 SELECT AVG (FinancialScore)
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database]

  --8. Find the highest Estimated Fraud Amount recorded. 
  SELECT MAX (EstimatedFraudAmount_ZAR)
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database]

  --9. Retrieve the top 10 cases with the highest Estimated Fraud Amount. 
   SELECT TOP (10) EstimatedFraudAmount_ZAR
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
  
--10. Display all cases where the suspect was arrested.
SELECT FirstName, LastName, CaseNumber, CrimeType
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
WHERE Arrested = 'yes'

--11. Count how many suspects were arrested versus not arrested.
  SELECT COUNT (*) AS NO_OF_ARREST,
         ARRESTED
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
  GROUP BY ARRESTED 

--12. Count the number of cases associated with each bank. 
SELECT DISTINCT BankInvolved,
                COUNT (*) AS cases
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
  GROUP BY BankInvolved

--13. Calculate the total Estimated Fraud Amount per province. 
 SELECT Province,
        SUM (EstimatedFraudAmount_ZAR) AS total_EstimatedFraudAmount
FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 GROUP BY Province

 --14. Retrieve all suspects older than 50 years. 
 SELECT FirstName, LastName, Age
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 WHERE Age > 50

 --15. Calculate the average age of suspects per province. 
 SELECT Province,
 AVG (Age) AS average_age
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 GROUP BY Province

 --16. Display all cases recorded from 2020 onwards. 
 SELECT CrimeType, CrimeDate
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 WHERE CrimeDate >= '2020-01-01'

--17. Count how many cases resulted in a Convicted status. 
SELECT CaseStatus,
        COUNT (*) AS Convicted_status
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 WHERE CaseStatus = 'Convicted'
 GROUP BY CaseStatus

 --18. Retrieve all suspects with more than three previous offenses. 
 SELECT FirstName, LastName, PreviousOffenses
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
 WHERE PreviousOffenses > 3

 --19. Show the distribution of cases by Risk Level. 
SELECT RISKLEVEL,
        COUNT (*) AS distribution_of_cases
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
GROUP BY RiskLevel

--20. Calculate the total Estimated Fraud Amount across all cases. 


