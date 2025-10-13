CREATE OR REPLACE VIEW `bellabeat-472120.Fitbase.dailyActivity_view` AS
SELECT
  Id,
  ActivityDate,
  TotalSteps,
  ROUND(TotalDistance, 2) AS TotalDistance,
  ROUND(TrackerDistance, 2) AS TrackerDistance,
  ROUND(LoggedActivitiesDistance,2) AS LoggedActivitiesDistance,
  ROUND(VeryActiveDistance, 2) AS VeryActiveDistance,
  ROUND(ModeratelyActiveDistance, 2) AS ModeratelyActiveDistance,
  ROUND(LightActiveDistance, 2) AS LightActiveDistance,
  ROUND(SedentaryActiveDistance, 2) AS SedentaryActiveDistance,
  VeryActiveMinutes,
  FairlyActiveMinutes,
  LightlyActiveMinutes,
  SedentaryMinutes,
  Calories
  
FROM bellabeat-472120.Fitbase.dailyActivity_merged;

CREATE OR REPLACE VIEW `bellabeat-472120.Fitbase.weightLogInfo_view` AS
SELECT
  SAFE_CAST(Id AS INT64) AS Id,
  PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', Date) AS DateLog,
  ROUND(CAST(WeightKg AS FLOAT64), 2) AS WeightKg,
  ROUND(CAST(BMI AS FLOAT64), 2) AS BMI,
  SAFE_CAST(Fat AS INT64) AS Fat,
  IF(IsManualReport = 'True', TRUE, FALSE) AS IsManualReport,
  SAFE_CAST(LogId AS INT64) AS LogId
FROM `bellabeat-472120.Fitbase.weightLogInfo_merged`
WHERE Date != 'Date';

CREATE OR REPLACE VIEW `bellabeat-472120.Fitbase.sleepDay_view` AS
SELECT
  SAFE_CAST(Id AS INT64) AS Id,
  PARSE_TIMESTAMP('%m/%d/%Y %I:%M:%S %p', SleepDay) AS SleepDay,
  TotalSleepRecords,
  TotalMinutesSleep,
  TotalTimeInBed
FROM `bellabeat-472120.Fitbase.sleepDay_merged`
WHERE SleepDay != 'SleepDay';