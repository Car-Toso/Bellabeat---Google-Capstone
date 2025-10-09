


# **Bellabeat – Google Data Analytics Capstone**

This project was developed as part of the Google Data Analytics Capstone, with the objective of uncovering insights from smart device usage data to support Bellabeat’s mission of promoting women’s wellness.

The analysis was performed in BigQuery and Tableau, following a structured end-to-end process:

1. [Background Information](#1-background-information)
2. [Data import and preparation](#2-data-import-and-preparation)
3. [Data cleaning and transformation](#3-data-cleaning-and-transformation)
4. [Feature creation and analysis](#4-feature-creation-and-analysis)
5. [Data visualization](#5-data-visualization)

## **1. Background Information**

Bellabeat, a manufacturer of health-focused tech products for women, is a small company with potential to expand in the global smart device market. Co-founder and Chief Creative Officer Urška Sršen believes analyzing activity data from their devices could reveal growth opportunities. The goal of this analysis is to examine the usage of one smart product to gain insights into consumer behavior, which will then guide the company’s marketing strategy.

### Business Task

The objective of this project is to analyze consumer behavior using smart device data to identify actionable insights for Bellabeat. By examining usage patterns and trends from both non-Bellabeat and Bellabeat devices, the analysis aims to uncover opportunities to enhance user engagement and inform marketing strategy. Key deliverables include a detailed assessment of usage trends, visualizations highlighting user behavior, and high-level recommendations to optimize product positioning and marketing initiatives.

### About the Data

The data for this case study comes from the [Fitbit Fitness Tracker Data](https://www.kaggle.com/datasets/arashnic/fitbit), a publicly available dataset on Kaggle. It contains detailed fitness tracker information from 30 Fitbit users, all of whom consented to share their personal tracker data. The dataset will be imported into RStudio for cleaning, filtering, and analysis to extract actionable insights.

### Limitations

* Small sample size: The dataset originally included 30 users, but after cleaning, only 24 had complete records, limiting the ability to generalize findings to the broader smart device consumer population.

* Non-representative users: The sample may not reflect diversity in age, gender, physical activity habits, or geographic location.

* Potential behavior bias: Users who consented to share their data may behave differently from the general population.

* Limited to Fitbit devices: The data comes solely from Fitbit, so trends may not fully apply to other smart devices or Bellabeat products.

* Lack of additional context: The dataset does not include broader demographic or lifestyle variables, restricting analysis of factors influencing device usage.


## **2. Data import and preparation**
* Three datasets were initially loaded: dailyActivity_merged, sleepDay_merged, and weightLogInfo.
* While daily activity was imported successfully, sleep and weight contained blank cells that required them to be uploaded as strings.
* Their columns were later reconfigured and cleaned through SQL queries.

## **3. Data cleaning and transformation**

* Created views to organize columns and round numeric values.

* Checked for duplicates, missing data, and inconsistencies.

* Merged the daily activity and sleep datasets for integrated analysis.

## **4. Feature creation and analysis**

* Categorized activity levels based on minutes of activity.

* Calculated the average steps per user, identifying those above the 7,500-step daily goal.

* Measured average sedentary minutes — a key metric that should be reduced.

* Assessed device usage distribution among participants.

* Evaluated average sleep duration, which was found to be below the recommended threshold.

## **5. Data visualization**

Interactive charts were developed in Tableau to summarize insights:

* Bar chart: activity category vs. percentage of total steps.

* Bar chart: weekday vs. average steps and sleep minutes.

* Ring chart: app usage by user category.

* Bar chart: average steps by weekday.

## **6. Key findings**
Participants tend to have lower-than-recommended sleep duration and high sedentary behavior, while users exceeding 7,500 daily steps showed better overall wellness patterns. These insights can guide Bellabeat in designing personalized activity and sleep recommendations.



