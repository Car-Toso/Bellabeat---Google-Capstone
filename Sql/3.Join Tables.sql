-- Merge Activity and Sleep per Id and date
WITH activity_agg AS (
  SELECT
    Id,
    DATE(ActivityDate) AS ActivityDate,
    SUM(SAFE_CAST(TotalSteps AS INT64)) AS TotalSteps,
    SUM(SAFE_CAST(Calories AS INT64)) AS Calories,
    SUM(SAFE_CAST(VeryActiveMinutes AS INT64)) AS VeryActiveMinutes,
    SUM(SAFE_CAST(FairlyActiveMinutes AS INT64)) AS FairlyActiveMinutes,
    SUM(SAFE_CAST(LightlyActiveMinutes AS INT64)) AS LightlyActiveMinutes
  FROM `bellabeat-472120.Fitbase.dailyActivity_view`
  GROUP BY Id, DATE(ActivityDate)
),
sleep_agg AS (
  SELECT
    Id,
    DATE(SleepDay) AS SleepDate,
    SUM(SAFE_CAST(TotalMinutesSleep AS INT64)) AS TotalMinutesSleep,
    SUM(SAFE_CAST(TotalTimeInBed AS INT64)) AS TotalTimeInBed
  FROM `bellabeat-472120.Fitbase.sleepDay_view`
  GROUP BY Id, DATE(SleepDay)
)
SELECT
  a.Id,
  a.ActivityDate AS Date,
  a.TotalSteps,
  a.Calories,
  a.VeryActiveMinutes,
  a.FairlyActiveMinutes,
  a.LightlyActiveMinutes,
  s.TotalMinutesSleep,
  s.TotalTimeInBed
FROM activity_agg a
LEFT JOIN sleep_agg s
  ON a.Id = s.Id
  AND a.ActivityDate = s.SleepDate
ORDER BY a.Id, Date;
