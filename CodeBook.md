---
title: "CodeBook"
output: html_document
---


## Getting and Cleaning Data Course Project
The code in 'run_analysis.R' reads the accelerometer and gyroscope data from Human Activity Recognition using Smartphones experiment and merges the data together, extracts only mean and standard deviation variables, creates a tidy dataset which gives the mean of each variable by subject and activity.

### Identifiers
* subjectID - factor variable identifies the subject (1-30)

* activity - factor variable identifies the activity being performed
    + LAYING
    + SITTING
    + STANDING 
    + WALKING 
    + WALKING_DOWNSTAIRS 
    + WALKING_UPSTAIRS

### Variables
+ timeBodyAcc-mean-X
+ timeBodyAcc-mean-Y                
+ timeBodyAcc-mean-Z               
+ timeBodyAcc-stdev-X
+ timeBodyAcc-stdev-Y
+ timeBodyAcc-stdev-Z             
+ timeGravityAcc-mean-X
+ timeGravityAcc-mean-Y
+ timeGravityAcc-mean-Z
+ timeGravityAcc-stdev-X
+ timeGravityAcc-stdev-Y
+ timeGravityAcc-stdev-Z   
+ timeBodyAccJerk-mean-X
+ timeBodyAccJerk-mean-Y
+ timeBodyAccJerk-mean-Z       
+ timeBodyAccJerk-stdev-X
+ timeBodyAccJerk-stdev-Y
+ timeBodyAccJerk-stdev-Z         
+ timeBodyGyro-mean-X
+ timeBodyGyro-mean-Y
+ timeBodyGyro-mean-Z           
+ timeBodyGyro-stdev-X
+ timeBodyGyro-stdev-Y
+ timeBodyGyro-stdev-Z       
+ timeBodyGyroJerk-mean-X
+ timeBodyGyroJerk-mean-Y
+ timeBodyGyroJerk-mean-Z      
+ timeBodyGyroJerk-stdev-X
+ timeBodyGyroJerk-stdev-Y
+ timeBodyGyroJerk-stdev-Z      
+ timeBodyAccMag-mean
+ timeBodyAccMag-stdev
+ timeGravityAccMag-mean         
+ timeGravityAccMag-stdev
+ timeBodyAccJerkMag-mean       
+ timeBodyAccJerkMag-stdev       
+ timeBodyGyroMag-mean       
+ timeBodyGyroMag-stdev         
+ timeBodyGyroJerkMag-mean     
+ timeBodyGyroJerkMag-stdev       
+ frequencyBodyAcc-mean-X
+ frequencyBodyAcc-mean-Y    
+ frequencyBodyAcc-mean-Z         
+ frequencyBodyAcc-stdev-X
+ frequencyBodyAcc-stdev-Y      
+ frequencyBodyAcc-stdev-Z
+ frequencyBodyAcc-meanFreq-X
+ frequencyBodyAcc-meanFreq-Y
+ frequencyBodyAcc-meanFreq-Z
+ frequencyBodyAccJerk-mean-X
+ frequencyBodyAccJerk-mean-Y
+ frequencyBodyAccJerk-mean-Z
+ frequencyBodyAccJerk-stdev-X
+ frequencyBodyAccJerk-stdev-Y    
+ frequencyBodyAccJerk-stdev-Z    
+ frequencyBodyAccJerk-meanFreq-X
+ frequencyBodyAccJerk-meanFreq-Y
+ frequencyBodyAccJerk-meanFreq-Z
+ frequencyBodyGyro-mean-X
+ frequencyBodyGyro-mean-Y      
+ frequencyBodyGyro-mean-Z
+ frequencyBodyGyro-stdev-X
+ frequencyBodyGyro-stdev-Y    
+ frequencyBodyGyro-stdev-Z
+ frequencyBodyGyro-meanFreq-X
+ frequencyBodyGyro-meanFreq-Y
+ frequencyBodyGyro-meanFreq-Z
+ frequencyBodyAccMag-mean
+ frequencyBodyAccMag-stdev    
+ frequencyBodyAccMag-meanFreq
+ frequencyBodyAccJerkMag-mean
+ frequencyBodyAccJerkMag-stdev 
+ frequencyBodyAccJerkMag-meanFreq
+ frequencyBodyGyroMag-mean
+ frequencyBodyGyroMag-stdev  
+ frequencyBodyGyroMag-meanFreq
+ frequencyBodyGyroJerkMag-mean
+ frequencyBodyGyroJerkMag-stdev 
+ frequencyBodyGyroJerkMag-meanFreq
