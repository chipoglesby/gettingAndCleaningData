---
title: "Codebook"
---

This is the codebook for the [Getting and Cleaning data class on Coursera.](https://www.coursera.org/learn/data-cleaning/)

```r
head(finalData,5)
```

```
## Source: local data frame [5 x 8]
## Groups: activity, subject, feature [5]
## 
##   activity subject   obs       feature       mean        std   avg_mean
##     (fctr)   (int) (int)         (chr)      (dbl)      (dbl)      (dbl)
## 1   LAYING      20  2411 fBodyAccJerkX -0.9926227 -0.9951256 -0.6245233
## 2   LAYING      20  2411 fBodyAccJerkY -0.9832903 -0.9862617 -0.4669961
## 3   LAYING      20  2411 fBodyAccJerkZ -0.9872368 -0.9898161 -0.7307666
## 4   LAYING      20  2411   fBodyAccMag -0.9856195 -0.9865645 -0.5054934
## 5   LAYING      20  2411     fBodyAccX -0.9927046 -0.9946814 -0.5706379
## Variables not shown: avg_std (dbl)
```
We can summarize the data by using:

```r
summarize(finalData)
```