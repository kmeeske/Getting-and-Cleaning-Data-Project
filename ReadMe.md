---
title: "Human Activity Recognition Using Smartphones"
output: html_document
---

## Getting and Cleaning Data Course Project

* run_analysis.R programatically reads in data files, merges the data together and cleans the data in order to summarize the data by mean
* First, the code reads in the required data files and merges the 'x', 'y' and 'subject' data sets
* Column names are added from the 'features' data file
* The test data, subject data and activity data are merged to form one data frame that only keeps variables which are means or standard deviations
* Descriptive activity names are added as a variable from the 'activity_labels.txt' file
* The labels are renamed with the 'grepl' function to make the names more intuitive for the user
* A second, independent data set is created which contains the mean of each variable for each activity and each subject
* The output of this tidy data set is written to a text file 'tidy_means.txt' 
