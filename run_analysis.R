library(dplyr)
library(tidyr)

# Features Data
featuresData <- read.table("data/features.txt", stringsAsFactors = FALSE)

# Test Data
xTestData <- read.table("data/test/X_test.txt")
yTestData <- read.table("data/test/y_test.txt")

# Train Data
xTrainData <- read.table("data/train/X_train.txt")
yTrainData <- read.table("data/train/y_train.txt")

# Subject Data
trainSubjectData <- read.table("data/train/subject_train.txt")
testSubjectData <- read.table("data/test/subject_test.txt")

# Label Data
labelsData <- read.table("data/activity_labels.txt")

# Merge data
testSubjectName <- merge(yTestData, labelsData, by.x = "V1", by.y = "V1")
trainSubjectName<- merge(yTrainData, labelsData, by.x = "V1", by.y = "V1")
joinedTestData <- bind_cols(as.data.frame(testSubjectName$V2),
                            as.data.frame(testSubjectData$V1), xTestData)
joinedTrainData <- bind_cols(as.data.frame(trainSubjectName$V2),
                             as.data.frame(trainSubjectData$V1), xTrainData)

# Giving columns names
names(joinedTestData) <- c("activity", "subject", featuresData$V2)
names(joinedTrainData) <- c("activity", "subject", featuresData$V2)

# Joining test and training data
mergedData <- bind_rows(joinedTestData, joinedTrainData)

# Subsetting mean and standard deviation columns only.
msData <- mergedData[,c(1, 2, grep(".*mean\\(.*|.*std\\(.*",
                                   names(mergedData)))]

# Tidying data set by removing hypens
names(msData) <- gsub("-", "", names(msData))
names(msData) <- gsub("(.*)(mean\\(\\))(.*)", "\\1\\3_mean", names(msData))
names(msData) <- gsub("(.*)(std\\(\\))(.*)", "\\1\\3_std", names(msData))

# Creating the final dataset and writing as a table
finalData <- msData %>% mutate(obs = 1:nrow(msData)) %>%
  gather(var, value, -(activity:subject), -obs) %>%
  separate(var, c("feature", "metric")) %>%
  spread(metric, value) %>%
  group_by(activity, subject, feature) %>%
  mutate(avg_mean = mean(mean),
         avg_std = mean(std))
write.table(finalData, file = "finalData.txt", row.name = FALSE)
