# Bellabeat – Google Data Analytics Capstone

This project was developed as part of the Google Data Analytics Capstone, with the objective of uncovering insights from smart device usage data to support Bellabeat’s mission of promoting women’s wellness.

The analysis was performed in BigQuery and Tableau, following a structured end-to-end process:

1. Data import and preparation:
* Three datasets were initially loaded (daily activity, sleep, and weight).
* While daily activity was imported successfully, sleep and weight contained blank cells that required them to be uploaded as strings.
* Their columns were later reconfigured and cleaned through SQL queries.

2. Data cleaning and transformation:

* Created views to organize columns and round numeric values.

* Checked for duplicates, missing data, and inconsistencies.

* Merged the daily activity and sleep datasets for integrated analysis.

3. Feature creation and analysis:

* Categorized activity levels based on minutes of activity.

* Calculated the average steps per user, identifying those above the 7,500-step daily goal.

* Measured average sedentary minutes — a key metric that should be reduced.

* Assessed device usage distribution among participants.

* Evaluated average sleep duration, which was found to be below the recommended threshold.

4. Data visualization:

Interactive charts were developed in Tableau to summarize insights:

* Bar chart: activity category vs. percentage of total steps.

* Bar chart: weekday vs. average steps and sleep minutes.

* Ring chart: app usage by user category.

* Bar chart: average steps by weekday.

5. Key findings:
Participants tend to have lower-than-recommended sleep duration and high sedentary behavior, while users exceeding 7,500 daily steps showed better overall wellness patterns. These insights can guide Bellabeat in designing personalized activity and sleep recommendations.
