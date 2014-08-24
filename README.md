getcleandataProject
===================

The course project for online Coursera course "Getting and Cleaning Data".
This course is part of the Data Science Specialization from Johns Hopkins
University.

## Overview
This project is designed to practice using R to get and clean a data set
into a format easily understood and used by others.

The data being used for this project is the "Human Activity Recognition
Using Smartphones" dataset hosted on the UCI Machine Learning Repository.
This data is a set of features calculated from accelerometer data collected
by Samsung smartphones while test subjects were performing a variety of activities such as walking, laying down, etc.

The project includes three files:  
* **README.md**     : the file you are reading right now!  
* **CodeBook.md**   : contains descriptions of the variables, data, and work done
                  on the data  
* **run_analysis.R**: an R script that loads the original data files, combines and
                  cleans them up, and outputs a text file with average values
                  for the mean and standard deviation features grouped by 
                  subject and activity.  See below for a more detailed
                  description.  

**The original dataset was created by:**

> Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
> Smartlab - Non Linear Complex Systems Laboratory  
> DITEN - Universit‡ degli Studi di Genova.  
> Via Opera Pia 11A, I-16145, Genoa, Italy.  
> activityrecognition@smartlab.ws  
> www.smartlab.ws  


## Script: run_analysis.R

### Description:
This script loads in the data and data labels, and combines the training and
test data into one large data frame.  The feature vector labels are cleaned 
up to remove problem characters, and these new labels are added as column 
names.

The subject and activity labels (i.e. one for each observation) are added as
the first and second columns of the data frame.  The mean and standard 
deviation (std) features are extracted into a smaller dataset.  Finally, a
second dataset is created containing the average feature values for each 
activity and subject.  (see OUTPUT below).

### Output
```
data_averages   # a data frame
````
* is written to file "data_averages.txt".  
* has dimensions 180 x 88
+ First two columns are activity label and subject number
+ Columns 3 - 88 are the averages of the 86 mean and std features for each
activity/subject pair.  
* The rows are organized first by activity in alphabetical order and then by subject number.
   
### Detailed Steps  

**PREPARE THE WORKSPACE**

1. Clear the workspace

**LOAD THE DATA**  

2. Load the training and test feature vector data files (561 variables)  
* UCI HAR Dataset/train/X_train.txt  
* UCI HAR Dataset/test/X_test.txt  
  
3. Load the feature list  
* UCI HAR Dataset/features.txt  
  
4. Load the train/test activity data  
* UCI HAR Dataset/train/y_train.txt  
* UCI HAR Dataset/test/y_test.txt  
  
5. Load the 6 labels (WALKING, LAYING, etc.) corresponding to the activity data  
* UCI HAR Dataset/activity_labels.txt  
  
6. Load the train/test subject label data (i.e. one label for each observation)  
* UCI HAR Dataset/train/subject_train.txt   
* UCI HAR Dataset/test/subject_test.txt  
  
**CLEAN UP THE DATA**

7. Simplify the feature label nomenclature:  
* Replace "," and "-" with "_"  
* Remove all "(" and ")"  
* Add "_of_" after word "angle", which appears in certain feature names as a function
with arguments.  "of" will help clarify this, as the ( ) have been removed.  E.g. angle_of_Z_gravityMean.   

8. Convert activity_labels to a vector

9. Merge the training and test feature vector data and add the feature labels

**ADD THE SUBJECT LABEL DATA**  

10. Combine the train and test subject labels and convert to a vector, 
then bind as first column to the data
(Note: Subject will end up as the second column after adding activity data)  
  
11. Update the names with a descriptive variable name  
  
**ADD THE ACTIVITY LABEL DATA**

12. Convert the labels from numbers to words (e.g. WALKING)

13. Add the label data and the variable name to the dataset  


**EXTRACT THE MEAN AND STANDARD DEVIATION VARIABLES INTO A NEW DATASET**

14. Find the variables related to mean and std by looking for 
the strings "mean" and "std" in each feature name  

15. Keep only the mean and std variables  

**CALCULATE THE AVERAGE MEAN/STD FEATURES FOR EACH SUBJECT/ACTIVITY**

16. Split up the data by subject/activity pairs  

17. Calculate the average values for each feature, for each pair  

18. Reshape the data into a data frame with 180 rows (6 activities x 30 subjects)
The rows are ordered first by activity (alphabetical order), then by subject

19. Create columns of activity and subject labels and bind them to the data  

20. Add the feature labels back onto the data frame  

21. Write the data frame to file "data_averages.txt"  