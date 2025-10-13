--DUPLICATE VALUES
--Duplicate values in ActivityDate View
SELECT 
  Id, 
  ActivityDate, 
  COUNT(*) AS registros
FROM `bellabeat-472120.Fitbase.dailyActivity_view`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;

--Duplicate values in SleepDay View
SELECT 
  Id, 
  SleepDay, 
  COUNT(*) AS registros
FROM `bellabeat-472120.Fitbase.sleepDay_view`
GROUP BY Id, SleepDay
HAVING COUNT(*) > 1;

--Duplicate values in WeightLogInfo View
SELECT 
  Id, 
  DateLog, 
  COUNT(*) AS registros
FROM `bellabeat-472120.Fitbase.weightLogInfo_view`
GROUP BY Id, DateLog
HAVING COUNT(*) > 1;

--CHECK FOR MISSING OR NULL VALUES

--ActivityDate View
SELECT *
FROM `bellabeat-472120.Fitbase.dailyActivity_view`
WHERE TotalSteps IS NULL 
   OR TotalDistance IS NULL 
   OR Calories IS NULL;

--SleepDay View
SELECT *
FROM `bellabeat-472120.Fitbase.sleepDay_view`
WHERE TotalMinutesSleep IS NULL 
   OR TotalTimeInBed IS NULL;

--WeightLogInfo View
SELECT *
FROM `bellabeat-472120.Fitbase.weightLogInfo_view`
WHERE WeightKg IS NULL 
   OR BMI IS NULL;

