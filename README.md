# South Africa Criminal Database – Data Engineering Project
## Project Overview

This project simulates a real-world criminal case analytics database using SQL.

The dataset contains structured crime records including:

Crime type

Province

Risk level

Estimated fraud amount

Arrest status

Suspect age

Financial score

Crime date

Investigating officer

Bank association

The project is built around 30 structured SQL analytical tasks 


## Project Objectives

Design and query a structured criminal database

Perform aggregation and statistical analysis

Generate province-level and crime-type summaries

Analyze fraud patterns and financial risk indicators

Simulate reporting queries used in law enforcement analytics

# SQL & Data Engineering Concepts Applied
## Data Retrieval & Filtering

SELECT

WHERE

Conditional filtering (Fraud, High Risk, Arrested cases)

Date-based filtering (Cases from 2020 onwards)

## Aggregation & Statistical Analysis

COUNT() – Total cases, arrests, cases per province

SUM() – Total Estimated Fraud Amount

AVG() – Average Financial Score & suspect age

MAX() / MIN() – Highest fraud amount, youngest/oldest suspect

## Grouped Reporting

GROUP BY province

GROUP BY crime type

GROUP BY risk level

Yearly case distribution using CrimeDate

## Ranking & Advanced Analysis

Top 10 highest fraud cases

Most common crime type

Province with highest case volume

Distribution of arrests vs non-arrests

## Analytical Insights Generated

This project enables analysis such as:

Which province has the highest number of criminal cases?

What is the total fraud exposure per province?

Which crime type is most common?

What risk levels dominate the dataset?

What financial thresholds correlate with high fraud amounts?

Arrest rate analysis across crime categories
