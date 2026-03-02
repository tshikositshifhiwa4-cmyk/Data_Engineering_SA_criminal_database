create database SA_crime_data

SELECT *
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database]

  --Data analysis
  --find total numbers of individuals based on gender

  SELECT COUNT (*) AS Total_no,
             GENDER
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
  GROUP BY GENDER; --(we have 489 males and 511 females)

  --find those who got arrested and the ones who were not
  SELECT COUNT (*) AS NO_OF_ARREST,
         ARRESTED
  FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
  GROUP BY ARRESTED --(We have 474 people who got arrested, and 526 who were not arrested)

  --Find the number of people per case status 
 SELECT COUNT (*) AS NO_STATUS,
        CaseStatus
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 
  GROUP BY CaseStatus --(we have 217 convicted, 208 closed, 193 under investigation, 196 court pending, 186 open)

  
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database] 

 --find different types of crime types (also count ) and provinces
 SELECT DISTINCT CrimeType,
                COUNT (*)
 FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
 GROUP BY CrimeType --(we have 8 different crimes, fraud(113), 
 --identity theft(107), money laundering(132), cybercrime(158), vehicle theft(122), drug trafficking(111), 
 --corruption(126), armed robbery(131))

 --province and which one has many cases
 SELECT DISTINCT Province,
                COUNT (*)
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
 GROUP BY Province --(we have 9 provinves NW(126), NC (131), WC(91), KZN(117), EC(113), LP(105), GP(117), MP(93), FS(107)

--FIND REPEATE OFFENDERS
SELECT FirstName, LastName,SouthAfricanID,
        COUNT (*)
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
GROUP BY SouthAfricanID, FirstName, LastName
HAVING COUNT (*) >1 --(WE HAVE NO REPEATING OFFENDERS)

--GROUP FAUD RISK LEVELS
SELECT RISKLEVEL,
        COUNT (*)
FROM [SA_crime_data].[dbo].[south_africa_criminal_database]
GROUP BY RiskLevel; --(LOW(2520, MEDIUM (247), HIGH(232), CRITICAL (269)
