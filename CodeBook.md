Description of tidydata.txt variables
=====================================

The data within this tidy data set is the mean accelerometer measurements aggregated by subject (1 to 30) and activty (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

List of accelerometer variable headers: measurements are all average measurements of the mean and standard deviation variables provided from the original dataset.  Prior to taking the average all values were normalized and bounded within [-1,1].

"tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tGravityAccmeanX" "tGravityAccmeanY" "tGravityAccmeanZ" "tBodyAccJerkmeanX" "tBodyAccJerkmeanY" "tBodyAccJerkmeanZ" "tBodyGyromeanX" "tBodyGyromeanY" "tBodyGyromeanZ" "tBodyGyroJerkmeanX" "tBodyGyroJerkmeanY" "tBodyGyroJerkmeanZ" "tBodyAccMagmean" "tGravityAccMagmean" "tBodyAccJerkMagmean" "tBodyGyroMagmean" "tBodyGyroJerkMagmean" "fBodyAccmeanX" "fBodyAccmeanY" "fBodyAccmeanZ" "fBodyAccmeanFreqX" "fBodyAccmeanFreqY" "fBodyAccmeanFreqZ" "fBodyAccJerkmeanX" "fBodyAccJerkmeanY" "fBodyAccJerkmeanZ" "fBodyAccJerkmeanFreqX" "fBodyAccJerkmeanFreqY" "fBodyAccJerkmeanFreqZ" "fBodyGyromeanX" "fBodyGyromeanY" "fBodyGyromeanZ" "fBodyGyromeanFreqX" "fBodyGyromeanFreqY" "fBodyGyromeanFreqZ" "fBodyAccMagmean" "fBodyAccMagmeanFreq" "fBodyBodyAccJerkMagmean" "fBodyBodyAccJerkMagmeanFreq" "fBodyBodyGyroMagmean" "fBodyBodyGyroMagmeanFreq" "fBodyBodyGyroJerkMagmean" "fBodyBodyGyroJerkMagmeanFreq" "angletBodyAccMeangravity" "angletBodyAccJerkMeangravityMean" "angletBodyGyroMeangravityMean" "angletBodyGyroJerkMeangravityMean" "angleXgravityMean" "angleYgravityMean" "angleZgravityMean" "tBodyAccstdX" "tBodyAccstdY" "tBodyAccstdZ" "tGravityAccstdX" "tGravityAccstdY" "tGravityAccstdZ" "tBodyAccJerkstdX" "tBodyAccJerkstdY" "tBodyAccJerkstdZ" "tBodyGyrostdX" "tBodyGyrostdY" "tBodyGyrostdZ" "tBodyGyroJerkstdX" "tBodyGyroJerkstdY" "tBodyGyroJerkstdZ" "tBodyAccMagstd" "tGravityAccMagstd" "tBodyAccJerkMagstd" "tBodyGyroMagstd" "tBodyGyroJerkMagstd" "fBodyAccstdX" "fBodyAccstdY" "fBodyAccstdZ" "fBodyAccJerkstdX" "fBodyAccJerkstdY" "fBodyAccJerkstdZ" "fBodyGyrostdX" "fBodyGyrostdY" "fBodyGyrostdZ" "fBodyAccMagstd" "fBodyBodyAccJerkMagstd" "fBodyBodyGyroMagstd" "fBodyBodyGyroJerkMagstd"



As background here is information per the features_info.txt file in the original dataset.
Data for this project was obtained from here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Feature Selection Background Information:
=========================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'



