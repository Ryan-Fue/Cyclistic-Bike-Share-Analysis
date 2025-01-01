# Cyclistic-Bike-Share-Analysis
##### *Capstone Project of the Google Data Analyst Course*

<br>

## Introduction

## Executive Summary
In this case study, I used a fictional bike-share company's data to examine a subscription-based company model, determine ride trends, and theorize what was causing them. I then developed an action plan based on these findings. 

### Scenario
"You are a junior data analyst working on the marketing analyst team at Cyclistic, a bike-share
company in Chicago. The director of marketing believes the company’s future success
depends on maximizing the number of annual memberships. Therefore, your team wants to
understand how casual riders and annual members use Cyclistic bikes differently. From these
insights, your team will design a new marketing strategy to convert casual riders into annual
members. But first, Cyclistic executives must approve your recommendations, so they must be
backed up with compelling data insights and professional data visualizations."

### Question

How do annual members and casual riders use Cyclistic bikes differently?

### Task

Identify key patterns from the 2019 and 2020 trip records that illustrate the difference between annual members' and casual riders' Cyclistic bike usage.

## Process
### Tools
Big Query
- Used to filter, clean, and merge datasets for analysis

Tableau
- Used for the project's analysis and visuals to identify trends

### Original Datasets
- DivvyTrips2019.zip
- DivvyTrips2020.zip

### Processed Dataset
- MergedDivvyTrips.zip

### Tableau Dashboard
[Trend Visualization](https://public.tableau.com/views/CyclisticAnalysis_17356118061430/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)
https://public.tableau.com/views/CyclisticAnalysis_17356118061430/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Analysis
The data suggests that customers tend to take longer trips on average using the Cyclistic bike service, while subscribers take more frequent, shorter trips (assuming there is a similar number of customers and subscribers in this fictional company).  

The visualizations of "Rides by User Composition" in a pie chart illustrate a much larger portion of the total rides is completed by subscribers. If the company has a similar number of subscribers as customers, then this suggests that individual subscribers are taking much more frequent trips than customers. Otherwise, this trend could also result from the company having significantly more subscribers than customers. However, qualitatively, it is more probable that the former assumption is correct since users intending to use the service more frequently purchase memberships to reduce the cost of their rides.  

The visualization of "Avg Trip Duration of User Types," which graphs average trip duration and user type illustrates the difference in ride duration between the two groups. On average, customers' rides approached 5000 seconds (about 83 minutes), while subscribers' rides averaged less than 1000 seconds (about 16 minutes). This means customers had much longer trips on average than subscribers.

## Suggestions
The business task is to use historic ride trends to drive marketing that will promote subscriber counts. Analysis of data suggests that subscribers, in comparison to customers, take more frequent and shorter trips using the Cyclistic bike service. The company could improve subscription sales by targeting groups that may benefit from this service usage with advertisements. This may include groups like communicators who work close to home, students commuting to school, and individuals living near trails. The benefits promoted by the subscription should also be tailored to these target groups that may utilize the service.
