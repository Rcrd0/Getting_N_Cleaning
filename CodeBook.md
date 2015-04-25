---
title: "Code Book"
output: html_document
---

Variables
---------

Subject : 
        Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
        
Activity Name :
        The Activity performed by the subject. Possible values are
        
        
        LAYING 
        SITTING 
        STANDING 
        WALKING 
        WALKING_DOWNSTAIRS 
        WALKING_UPSTAIRS
        
Measurements

        The following list of variables represent the average value of their source measurements (see details below) for the combination of a Subject and Activity.

        tbodyacc_mean_x
        tbodyacc_mean_y
        tbodyacc_mean_z
        tgravityacc_mean_x
        tgravityacc_mean_y
        tgravityacc_mean_z
        tbodyaccjerk_mean_x
        tbodyaccjerk_mean_y
        tbodyaccjerk_mean_z
        tbodygyro_mean_x
        tbodygyro_mean_y
        tbodygyro_mean_z
        tbodygyrojerk_mean_x
        tbodygyrojerk_mean_y
        tbodygyrojerk_mean_z
        tbodyaccmag_mean
        tgravityaccmag_mean
        tbodyaccjerkmag_mean
        tbodygyromag_mean
        tbodygyrojerkmag_mean
        fbodyacc_mean_x
        fbodyacc_mean_y
        fbodyacc_mean_z
        fbodyacc_meanfreq_x
        fbodyacc_meanfreq_y
        fbodyacc_meanfreq_z
        fbodyaccjerk_mean_x
        fbodyaccjerk_mean_y
        fbodyaccjerk_mean_z
        fbodyaccjerk_meanfreq_x
        fbodyaccjerk_meanfreq_y
        fbodyaccjerk_meanfreq_z
        fbodygyro_mean_x
        fbodygyro_mean_y
        fbodygyro_mean_z
        fbodygyro_meanfreq_x
        fbodygyro_meanfreq_y
        fbodygyro_meanfreq_z
        fbodyaccmag_mean
        fbodyaccmag_meanfreq
        fbodybodyaccjerkmag_mean
        fbodybodyaccjerkmag_meanfreq
        fbodybodygyromag_mean
        fbodybodygyromag_meanfreq
        fbodybodygyrojerkmag_mean
        fbodybodygyrojerkmag_meanfreq
        tbodyacc_std_x
        tbodyacc_std_y
        tbodyacc_std_z
        tgravityacc_std_x
        tgravityacc_std_y
        tgravityacc_std_z
        tbodyaccjerk_std_x
        tbodyaccjerk_std_y
        tbodyaccjerk_std_z
        tbodygyro_std_x
        tbodygyro_std_y
        tbodygyro_std_z
        tbodygyrojerk_std_x
        tbodygyrojerk_std_y
        tbodygyrojerk_std_z
        tbodyaccmag_std
        tgravityaccmag_std
        tbodyaccjerkmag_std
        tbodygyromag_std
        tbodygyrojerkmag_std
        fbodyacc_std_x
        fbodyacc_std_y
        fbodyacc_std_z
        fbodyaccjerk_std_x
        fbodyaccjerk_std_y
        fbodyaccjerk_std_z
        fbodygyro_std_x
        fbodygyro_std_y
        fbodygyro_std_z
        fbodyaccmag_std
        fbodybodyaccjerkmag_std
        fbodybodygyromag_std
        fbodybodygyrojerkmag_std
        
This summarized dat set is derived using the source data available in 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones         

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

For this study we are only using the mean and std values. Features are normalized and bounded within [-1,1].

Use the following code to view the tidy_data in R


url <- "http://s3.amazonaws.com/coursera-uploads/user-addf571c190b325ec7189c6a/973500/asst-3/1ede7c70eb1711e48d249fae5fd55fbb.txt"

download.file(url,"tidy_data.txt")
tidy_data read.table("tidy_data.txt")
dim(tidy_data)
tidy_data[,1:7]
head(tidy_data)

