# RUN_ANALYSIS.R
# 
# SUMMMARY:
# This R script produces a tidy data set from the "Human Activity Recognition
# Using Smartphones" dataset hosted on the UCI Machine Learning Repository.
# See README.MD for more details on the dataset.
# 
# DESCRIPTION:
# This script loads in the data and data labels, and combines the training and
# test data into one large data frame.  The feature vector labels are cleaned 
# up to remove problem characters, and these new labels are added as column 
# names.
#
# The subject and activity labels (i.e. one for each observation) are added as
# the first and second columns of the data frame.  The mean and standard 
# deviation (std) features are extracted into a smaller dataset.  Finally, a
# second dataset is created containing the average feature values for each 
# activity and subject.  (see OUTPUT below).

# OUTPUT: 
# (data frame) data_averages, written to file "data_averages.txt"
#    "data_averages" contains average values for the 86 features grouped by 
#    activity and subject (dimensions 180 x 88).  The first two columns are
#    activity label and subject number.  The rows are organized first by 
#    activity in alphabetical order and then by subject number.

### ---------------------------------------------------------------------------
###    PREPARE THE WORKSPACE
### ---------------------------------------------------------------------------

# Clear the workspace
rm(list = ls())


### ---------------------------------------------------------------------------
###    LOAD THE DATA
### ---------------------------------------------------------------------------

# Load the training and test feature vector data (561 variables)
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
test_data <- read.table("UCI HAR Dataset/test/X_test.txt")

# Load the feature list
feature_list <- read.table("UCI HAR Dataset/features.txt")

# Load the train/test activity data
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")

# Load the 6 labels (WALKING, LAYING, etc.) corresponding to the activity data
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt") 

# Load the train/test subject label data (i.e. one label for each observation)
train_subjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("UCI HAR Dataset/test/subject_test.txt")


### ---------------------------------------------------------------------------
###    CLEAN UP THE DATA
### ---------------------------------------------------------------------------

## SIMPLIFY THE FEATURE LABEL NOMENCLATURE
# Replace "," and "-" with "_"
feature_list <- lapply(feature_list$V2, gsub, pattern = "[,-]", replacement = "_")
# Remove all "(" and ")"
feature_list <- lapply(feature_list, gsub, pattern = "[()]", replacement = "")
# Add "_of_" after word "angle", which appears in certain feature names as a function
# with arguments.  "of" will help clarify this, as the ( ) have been removed
# (Note also using sapply here for last operation to convert to a character vector)
feature_list <- sapply(feature_list, gsub, pattern = "angle", replacement = "angle_of_", 
                       USE.NAMES = FALSE)

# Convert activity_labels to a vector
activity_labels <- as.vector(activity_labels$V2)

# Merge the training and test feature vector data and add the feature labels
data <- rbind(train_data, test_data)
names(data) <- feature_list

## ADD THE SUBJECT LABEL DATA
# Combine the train and test subject labels (converting to a vector with [,1]), 
# and bind as first column to the data
# Note: Subject will end up as the second column after adding activity data
subject_data <- rbind(train_subjects, test_subjects)[,1]
data <- cbind(subject_data, data)
# Update the names with a descriptive variable name
names(data)[1] <- "subject"

## ADD THE ACTIVITY LABEL DATA
# Convert the labels from numbers to words (e.g. WALKING) by using the activity
# data to index into the length-6 vector of activity names.
descr_activity <- as.vector(activity_labels[c(train_activity$V1, 
                                                 test_activity$V1)])
# Add the label data and the variable name to the dataset
data <- cbind(descr_activity, data)
names(data)[1] <- "activity"


### ---------------------------------------------------------------------------
###    EXTRACT THE MEAN AND STANDARD DEVIATION VARIABLES INTO A NEW DATASET
### ---------------------------------------------------------------------------

# Find the variables related to mean and std by looking for 
# the strings "mean" and "std" in each feature name
is_mean_feature <- sapply(feature_list, grepl, pattern = "mean", 
                          USE.NAMES = FALSE, ignore.case = TRUE)
is_std_feature <- sapply(feature_list, grepl, pattern = "std", 
                         USE.NAMES = FALSE, ignore.case = TRUE)

# Keep only the mean and std variables
data_means_stds <- data[,is_mean_feature | is_std_feature]


### ---------------------------------------------------------------------------
###    CALCULATE THE AVERAGE MEAN/STD FEATURES FOR EACH SUBJECT/ACTIVITY
### ---------------------------------------------------------------------------

# Split up the data by subject/activity pairs
data_ms_split = split(data_means_stds, list(subject_data, descr_activity))

# Calculate the average values for each feature, for each pair
averages = lapply(data_ms_split, function(x) colMeans(x[,c(-1, -2)]))

# Reshape the data into a data frame with 180 rows (6 activities x 30 subjects)
# The rows are ordered first by activity (alphabetical order), then by subject
data_averages = as.data.frame(matrix(unlist(averages), 180, 86, byrow = TRUE))

# Create columns of activity and subject labels and bind them to the data
averages_activity_labels = rep(sort(activity_labels), each = 30)
averages_subject_labels = rep(1:30, times = 6)
data_averages = cbind(averages_activity_labels, averages_subject_labels, data_averages)

# Add the feature labels back onto the data frame
names(data_averages) <- names(data_means_stds)

# Write the data frame to file "data_averages.txt"
write.table(data_averages, file = "data_averages.txt", row.name = FALSE)