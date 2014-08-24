##Codebook of Variables

Feature Name |  Description  
--------------|----------------------------  
activity| The activity performed during the observations.  One of 6 values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
subject| A number 1-30 indicating which of the 30 subjects was performing the action
tBodyAcc_mean_X|    Mean time value of x-axis body acceleration
tBodyAcc_mean_Y|	Mean time value of y-axis body acceleration
tBodyAcc_mean_Z|	Mean time value of z-axis body acceleration
tBodyAcc_std_X|	Standard deviation of time value of x-axis body acceleration
tBodyAcc_correlation_X_Z|	Correlation between x-axis and z-axis time values of body acceleration
tBodyAcc_correlation_Y_Z|	Correlation between y-axis and z-axis time values of body acceleration
tGravityAcc_mean_X|	Mean time value of x-axis gravity acceleration
tGravityAcc_mean_Y|	Mean time value of y-axis gravity acceleration
tGravityAcc_mean_Z|	Mean time value of z-axis gravity acceleration
tGravityAcc_std_X|	Standard deviation of time value of x-axis gravity acceleration
tGravityAcc_correlation_X_Z|	Correlation between x-axis and z-axis time values of gravity acceleration
tGravityAcc_correlation_Y_Z|	Correlation between y-axis and z-axis time values of gravity acceleration
tBodyAccJerk_mean_X|	Mean time value of x-axis body acceleration jerk
tBodyAccJerk_mean_Y|	Mean time value of y-axis body acceleration jerk
tBodyAccJerk_mean_Z|	Mean time value of z-axis body acceleration jerk
tBodyAccJerk_std_X|	Standard deviation of time value of x-axis body acceleration jerk
tBodyAccJerk_correlation_X_Z|	Correlation between x-axis and z-axis time values of body acceleration jerk
tBodyAccJerk_correlation_Y_Z|	Correlation between y-axis and z-axis time values of body acceleration jerk
tBodyGyro_mean_X|	Mean time value of x-axis body gyro
tBodyGyro_mean_Y|	Mean time value of y-axis body gyro
tBodyGyro_mean_Z|	Mean time value of z-axis body gyro
tBodyGyro_std_X|	Standard deviation of time value of x-axis body gyro
tBodyGyro_correlation_X_Z|	Correlation between x-axis and z-axis time values of body gyro
tBodyGyro_correlation_Y_Z|	Correlation between y-axis and z-axis time values of body gyro
tBodyGyroJerk_mean_X|	Mean time value of x-axis body gyro jerk
tBodyGyroJerk_mean_Y|	Mean time value of y-axis body gyro jerk
tBodyGyroJerk_mean_Z|	Mean time value of z-axis body gyro jerk
tBodyGyroJerk_std_X|	Standard deviation of time value of x-axis body gyro jerk
tBodyGyroJerk_correlation_X_Z|	Correlation between x-axis and z-axis time values of body gyro jerk
tBodyGyroJerk_correlation_Y_Z|	Correlation between y-axis and z-axis time values of body gyro jerk
tBodyAccMag_arCoeff3|	Autoregression coefficient with Burg order equal to 3 of the time value of the magnitude of the body acceleration
tBodyAccMag_arCoeff4|	Autoregression coefficient with Burg order equal to 4 of the time value of the magnitude of the body acceleration
tGravityAccMag_arCoeff3|	Autoregression coefficient with Burg order equal to 3 of the time value of the magnitude of the gravity acceleration
tGravityAccMag_arCoeff4|	Autoregression coefficient with Burg order equal to 4 of the time value of magnitude of the gravity acceleration
tBodyAccJerkMag_arCoeff3|	Autoregression coefficient with Burg order equal to 3 of the time value of the magnitude of the body acceleration jerk
tBodyAccJerkMag_arCoeff4|	Autoregression coefficient with Burg order equal to 4 of the time value of the magnitude of the body acceleration jerk
tBodyGyroMag_arCoeff3|	Autoregression coefficient with Burg order equal to 3 of the time value of the magnitude of the body gyro
tBodyGyroMag_arCoeff4|	Autoregression coefficient with Burg order equal to 4 of the time value of the magnitude of the body gyro
tBodyGyroJerkMag_arCoeff3|	Autoregression coefficient with Burg order equal to 3 of the time value of the magnitude of the body gyro jerk
tBodyGyroJerkMag_arCoeff4|	Autoregression coefficient with Burg order equal to 4 of the time value of the magnitude of the body gyro jerk
fBodyAcc_mean_X|	Mean of the FFT value of x-axis body acceleration
fBodyAcc_mean_Y|	Mean of the FFT value of y-axis body acceleration
fBodyAcc_mean_Z|	Mean of the FFT value of z-axis body acceleration
fBodyAcc_std_X|	Standard deviation of the FFT of the x-axis of body acceleration
fBodyAcc_maxInds_Y|	Index of the frequency component with largest magnitude from the FFT of the y-axis body acceleration
fBodyAcc_maxInds_Z|	Index of the frequency component with largest magnitude from the FFT of the z-axis body acceleration
fBodyAcc_meanFreq_X|	Mean frequency of the FFT of the x-axis body acceleration
fBodyAcc_bandsEnergy_1_24|	Energy in bands 1-24 from the FFT of body acceleration
fBodyAcc_bandsEnergy_25_48|	Energy in bands 25-48 from the FFT value of body acceleration
fBodyAccJerk_mean_X|	Mean of the FFT of x-axis body acceleration jerk
fBodyAccJerk_mean_Y|	Mean of the FFT of y-axis body acceleration jerk
fBodyAccJerk_mean_Z|	Mean of the FFT of z-axis body acceleration jerk
fBodyAccJerk_std_X|	Standard deviation of the FFT of x-axis body acceleration jerk
fBodyAccJerk_maxInds_Y|	Index of the frequency component with largest magnitude from the FFT of y-axis body acceleration jerk
fBodyAccJerk_maxInds_Z|	Index of the frequency component with largest magnitude from the FFT of z-axis body acceleration jerk
fBodyAccJerk_meanFreq_X|	Mean frequency of the FFT of the x-axis body acceleration jerk
fBodyAccJerk_bandsEnergy_1_24|	Energy in bands 1-24 from the FFT of body acceleration jerk
fBodyAccJerk_bandsEnergy_25_48|	Energy in bands 25-48 from the FFT of body acceleration jerk
fBodyGyro_mean_X|	Mean valule of the FFT of x-axis body gyro
fBodyGyro_mean_Y|	Mean valule of the FFT of y-axis body gyro
fBodyGyro_mean_Z|	Mean valule of the FFT of z-axis body gyro
fBodyGyro_std_X|	Standard deviation of the FFT value of x-axis body gyro
fBodyGyro_maxInds_Y|	Index of the frequency component with largest magnitude from the FFT of y-axis body gyro
fBodyGyro_maxInds_Z|	Index of the frequency component with largest magnitude from the FFT of z-axis body gyro
fBodyGyro_meanFreq_X|	Mean frequency of the FFT of the x-axis body gyro
fBodyGyro_bandsEnergy_1_24|	Energy in bands 1-24 from the FFT of body gyro
fBodyGyro_bandsEnergy_25_48|	Energy in bands 25-48 from the FFT of body gyro
fBodyAccMag_entropy|	Entropy of the FFT of the magnitude of body acceleration
fBodyAccMag_skewness|	Skewness of the FFT of the magnitude of body acceleration
fBodyAccMag_kurtosis|	Kurtosis of the FFT of the magnitude of body acceleration
fBodyBodyAccJerkMag_entropy|	Entropy of the FFT of the magnitude of body acceleration jerk
fBodyBodyAccJerkMag_skewness|	Skewness of the FFT of the magnitude of body acceleration jerk
fBodyBodyAccJerkMag_kurtosis|	Kurtosis of the FFT of the magnitude of body acceleration jerk
fBodyBodyGyroMag_entropy|	Entropy of the FFT of the magnitude of body gyro
fBodyBodyGyroMag_skewness|	Skewness of the FFT of the magnitude of body gyro
fBodyBodyGyroMag_kurtosis|	Kurtosis of the FFT of the magnitude of body gyro
fBodyBodyGyroJerkMag_entropy|	Entropy of the FFT of the magnitude of body gyro jerk
fBodyBodyGyroJerkMag_skewness|	Skewness of the FFT of the magnitude of body gyro jerk
fBodyBodyGyroJerkMag_kurtosis|	Kurtosis of the FFT of the magnitude of body gyro jerk
angle_of_tBodyAccMean_gravity|	angle between the time value of body acceleration and the mean gravity
angle_of_tBodyAccJerkMean_gravityMean|	Mean angle between the time value of body acceleration jerk and the Mean_gravityMean
angle_of_tBodyGyroMean_gravityMean|	angle between time value of body gyroMean_gravityMean
angle_of_tBodyGyroJerkMean_gravityMean|	angle between time value of body gyrojerkMean_gravityMean
angle_of_X_gravityMean|	angle between X-axis and the mean gravity
angle_of_Y_gravityMean|	angle between Y-axis and the mean gravity
angle_of_Z_gravityMean|	angle between Z-axis and the mean gravity