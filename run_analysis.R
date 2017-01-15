##Step 1 - Merges the training and test sets to create one data set
##Read test data files
x_test <- read.table("x_test.txt")
y_test <- read.table("y_test.txt")
##Read train, feature data files
x_train <- read.table("x_train.txt")
y_train <- read.table("y_train.txt")
features <- read.table("features.txt")
##Read subject data files
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
##Create 'x', 'y', and 'subject' data sets
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

##Step 2 - Extracts only the measurements on the mean and standard deviation for each measurment
colnames(x_data) <- features[,2]
colnames(y_data) <- "activityID"
colnames(subject_data) <- "subjectID"
data <- cbind(x_data, y_data, subject_data)

data_mean_sd <- data[,grepl("mean|std|activityID|subjectID", names(data))]

##Step 3 - Uses descriptive activity names to name the activities in the data set

activity_labels <- read.table("activity_labels.txt", col.names = c("activityID", "activity"))
data_with_activity <- merge(data_mean_sd, activity_labels, by = "activityID")
data_with_activity$subjectID <- as.factor(data_with_activity$subjectID)

##Step 4 - Appropriately labels the data set with descriptive variable names
names(data_with_activity) <- gsub('\\(|\\)',"", names(data_with_activity))
names(data_with_activity) <- gsub("^t","time", names(data_with_activity))
names(data_with_activity) <- gsub("^f", "frequency", names(data_with_activity))
names(data_with_activity) <- gsub("-XYZ", "3-axial", names(data_with_activity))
names(data_with_activity) <- gsub("BodyBody", "Body", names(data_with_activity))
names(data_with_activity) <- gsub("std", "stdev", names(data_with_activity))

##Step 5 - Create a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
data_melted <- melt(data_with_activity, id=c("subjectID", "activity"))
tidy <- dcast(data_melted, subjectID+activity ~ variable, mean)

write.table(tidy, "tidy_means.txt", row.names = FALSE)

