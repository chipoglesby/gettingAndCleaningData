---
title: "Codebook"
---

This is the codebook for the [Getting and Cleaning data class on Coursera.](https://www.coursera.org/learn/data-cleaning/)
Codebook
========

Variable list and descriptions
------------------------------

Variable name    | Description
-----------------|------------
subject          | ID the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity         | Activity name
featDomain       | Feature: Time domain signal or frequency domain signal (Time or Freq)
featInstrument   | Feature: Measuring instrument (Accelerometer or Gyroscope)
featAcceleration | Feature: Acceleration signal (Body or Gravity)
featVariable     | Feature: Variable (Mean or SD)
featJerk         | Feature: Jerk signal
featMagnitude    | Feature: Magnitude of the signals calculated using the Euclidean norm
featAxis         | Feature: 3-axial signals in the X, Y and Z directions (X, Y, or Z)
featCount        | Feature: Count of data points used to compute `average`
featAverage      | Feature: Average of each variable for each activity and each subject


Head of the dataset
------------------------------



|activity | subject|  obs|feature       |       mean|        std|   avg_mean|    avg_std|
|:--------|-------:|----:|:-------------|----------:|----------:|----------:|----------:|
|LAYING   |      20| 2411|fBodyAccJerkX | -0.9926227| -0.9951256| -0.6245233| -0.5841110|
|LAYING   |      20| 2411|fBodyAccJerkY | -0.9832903| -0.9862617| -0.4669961| -0.4204023|
|LAYING   |      20| 2411|fBodyAccJerkZ | -0.9872368| -0.9898161| -0.7307666| -0.7457329|
|LAYING   |      20| 2411|fBodyAccMag   | -0.9856195| -0.9865645| -0.5054934| -0.6042226|
|LAYING   |      20| 2411|fBodyAccX     | -0.9927046| -0.9946814| -0.5706379| -0.5385612|



Summary of variables
--------------------



|   |              activity   |   subject    |     obs      |  feature        |     mean         |     std        |   avg_mean      |   avg_std      |
|:--|:------------------------|:-------------|:-------------|:----------------|:-----------------|:---------------|:----------------|:---------------|
|   |LAYING            :64152 |Min.   : 1.00 |Min.   :    1 |Length:339867    |Min.   :-1.000000 |Min.   :-1.0000 |Min.   :-0.99458 |Min.   :-0.9957 |
|   |SITTING           :58641 |1st Qu.: 9.00 |1st Qu.: 2575 |Class :character |1st Qu.:-0.946387 |1st Qu.:-0.9878 |1st Qu.:-0.65996 |1st Qu.:-0.7785 |
|   |STANDING          :62898 |Median :17.00 |Median : 5150 |Mode  :character |Median :-0.196629 |Median :-0.9371 |Median :-0.49591 |Median :-0.6828 |
|   |WALKING           :56826 |Mean   :16.15 |Mean   : 5150 |NA               |Mean   :-0.330004 |Mean   :-0.6927 |Mean   :-0.33000 |Mean   :-0.6927 |
|   |WALKING_DOWNSTAIRS:46398 |3rd Qu.:24.00 |3rd Qu.: 7725 |NA               |3rd Qu.:-0.007234 |3rd Qu.:-0.4120 |3rd Qu.:-0.01786 |3rd Qu.:-0.6058 |
|   |WALKING_UPSTAIRS  :50952 |Max.   :30.00 |Max.   :10299 |NA               |Max.   : 1.000000 |Max.   : 1.0000 |Max.   : 0.96258 |Max.   : 0.1215 |


