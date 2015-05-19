
# Human Activity Recognition: Code Book

## Study Design


## Code Book

The data file, 'HAR.txt', is in a tab-delimited format.  The data consists of 35 observations with 68 variables.  The first row is a header, with the names of the variables.

The variables are as follows:

* activity: a variable representing the activity undertaken by the subject.  Valid values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS
* subject: a numerical identifier representing the individual subjects.
* TimeBodyAcceleration_mean_X: the portion of the mean acceleration of the wearer not due to gravity in the X direction.
* TimeBodyAcceleration_mean_Y: the portion of the mean acceleration of the wearer not due to gravity in the Y direction.
* TimeBodyAcceleration_mean_Z: the portion of the mean acceleration of the wearer not due to gravity in the Z direction.
* TimeBodyAcceleration_std_X: standard deviation of acceleration measurements of the wearer not due to gravity in the X direction.
* TimeBodyAcceleration_std_Y: standard deviation of acceleration measurements of the wearer not due to gravity in the Y direction.
* TimeBodyAcceleration_std_Z: standard deviation of acceleration measurements of the wearer not due to gravity in the Z direction.
* TimeGravityAcceleration_mean_X: the portion of the mean acceleration of the wearer due to gravity in the X direction.
* TimeGravityAcceleration_mean_Y: the portion of the mean acceleration of the wearer due to gravity in the Y direction.
* TimeGravityAcceleration_mean_Z: the portion of the mean acceleration of the wearer due to gravity in the Z direction.
* TimeGravityAcceleration_std_X: standard deviation of acceleration measurements of the wearer due to gravity in the X direction.
* TimeGravityAcceleration_std_Y: standard deviation of acceleration measurements of the wearer due to gravity in the Y direction.
* TimeGravityAcceleration_std_Z: standard deviation of acceleration measurements of the wearer due to gravity in the Z direction.
* TimeBodyAccelerationJerk_mean_X: the mean of the jerk signals of the wearer read by the accelerometer in the X direction.
* TimeBodyAccelerationJerk_mean_Y: the mean of the jerk signals of the wearer read by the accelerometer in the Y direction. 
* TimeBodyAccelerationJerk_mean_Z: the mean of the jerk signals of the wearer read by the accelerometer in the Z direction.
* TimeBodyAccelerationJerk_std_X: the standard deviation of the jerk signals of the wearer read by the accelerometer in the X direction.
* TimeBodyAccelerationJerk_std_Y: the standard deviation of the jerk signals of the wearer read by the accelerometer in the Y direction.
* TimeBodyAccelerationJerk_std_Z: the standard deviation of the jerk signals of the wearer read by the accelerometer in the Z direction.
* TimeBodyGyroscope_mean_X: the mean of the gyroscope readings in the X direction.
* TimeBodyGyroscope_mean_Y: the mean of the gyroscope readings in the Y direction.
* TimeBodyGyroscope_mean_Z: the mean of the gyroscope readings in the Z direction.
* TimeBodyGyroscope_std_X: the standard deviation of the gyroscope readings in the X direction.
* TimeBodyGyroscope_std_Y: the standard deviation of the gyroscope readings in the Y direction.
* TimeBodyGyroscope_std_Z: the standard deviation of the gyroscope readings in the Z direction.
* TimeBodyGyroscopeJerk_mean_X: the mean of the gyroscope jerk readings in the X direction.
* TimeBodyGyroscopeJerk_mean_Y: the mean of the gyroscope jerk readings in the Y direction.
* TimeBodyGyroscopeJerk_mean_Z: the mean of the gyroscope jerk readings in the Z direction. 
* TimeBodyGyroscopeJerk_std_X: the standard deviation of the gyroscope jerk readings in the X direction.
* TimeBodyGyroscopeJerk_std_Y: the standard deviation of the gyroscope jerk readings in the Y direction.
* TimeBodyGyroscopeJerk_std_Z: the standard deviation of the gyroscope jerk readings in the Z direction.
* TimeBodyAccelerationMagnitude_mean: the mean of the magnitude of the accelerometer readings attributed to the wearer.
* TimeBodyAccelerationMagnitude_std: the standard deviation of the magnitude of the accelerometer readings attributed to the wearer.
* TimeGravityAccelerationMagnitude_mean: the mean of the magnitude of the accelerometer readings attributed to gravity.
* TimeGravityAccelerationMagnitude_std: the standard deviation of the magnitude of the accelerometer readings attributed to gravity.
* TimeBodyAccelerationJerkMagnitude_mean: the mean of the magnitude of the accelerometer jerk readings.
* TimeBodyAccelerationJerkMagnitude_std: the standard deviation of the magnitude of the accelerometer jerk readings.
* TimeBodyGyroscopeMagnitude_mean: the mean of the magnitude of the gyroscope readings.
* TimeBodyGyroscopeMagnitude_std: the standard deviation of the magnitude of the gyroscope readings.
* TimeBodyGyroscopeJerkMagnitude_mean: the mean of the magnitude of the gyroscope's jerk readings.
* TimeBodyGyroscopeJerkMagnitude_std: the standard deviation of the magnitude of the gyroscope's jerk readings.
* FrequencyBodyAcceleration_mean_X: the mean of the accelerometer readings in the X direction, in frequency domain. 
* FrequencyBodyAcceleration_mean_Y: the mean of the accelerometer readings in the Y direction, in frequency domain. 
* FrequencyBodyAcceleration_mean_Z: the mean of the accelerometer readings in the Z direction, in frequency domain. 
* FrequencyBodyAcceleration_std_X: the standard deviation of the accelerometer readings in the X direction, in frequency domain.
* FrequencyBodyAcceleration_std_Y: the standard deviation of the accelerometer readings in the Y direction, in frequency domain.
* FrequencyBodyAcceleration_std_Z: the standard deviation of the accelerometer readings in the Z direction, in frequency domain.
* FrequencyBodyAccelerationJerk_mean_X: the mean of the accelerometer jerk readings in the X direction, in frequency domain. 
* FrequencyBodyAccelerationJerk_mean_Y: the mean of the accelerometer jerk readings in the Y direction, in frequency domain. 
* FrequencyBodyAccelerationJerk_mean_Z: the mean of the accelerometer jerk readings in the Z direction, in frequency domain. 
* FrequencyBodyAccelerationJerk_std_X: the standard deviation of the accelerometer jerk readings in the X direction, in frequency domain. 
* FrequencyBodyAccelerationJerk_std_Y: the standard deviation of the accelerometer jerk readings in the Y direction, in frequency domain. 
* FrequencyBodyAccelerationJerk_std_Z: the standard deviation of the accelerometer jerk readings in the Z direction, in frequency domain. 
* FrequencyBodyGyroscope_mean_X: the mean of the gyroscope readings in the X direction, in frequency domain.
* FrequencyBodyGyroscope_mean_Y: the mean of the gyroscope readings in the Y direction, in frequency domain.
* FrequencyBodyGyroscope_mean_Z: the mean of the gyroscope readings in the Z direction, in frequency domain.
* FrequencyBodyGyroscope_std_X: the standard deviation of the gyroscope readings in the X direction, in frequency domain.
* FrequencyBodyGyroscope_std_Y: the standard deviation of the gyroscope readings in the Y direction, in frequency domain.
* FrequencyBodyGyroscope_std_Z: the standard deviation of the gyroscope readings in the Z direction, in frequency domain.
* FrequencyBodyAccelerationMagnitude_mean: the mean of the magnitudes of the accelerometer readings, in frequency domain.
* FrequencyBodyAccelerationMagnitude_std: the standard deviation of the magnitudes of the accelerometer readings, in frequency domain.
* FrequencyBodyAccelerationJerkMagnitude_mean: the mean of the magnitudes of the accelerometer jerk readings, in frequency domain.
* FrequencyBodyAccelerationJerkMagnitude_std: the standard deviation of the magnitudes of the accelerometer jerk readings, in frequency domain.
* FrequencyBodyGyroscopeMagnitude_mean: the mean of the magnitudes of the gyroscope readings, in frequency domain.
* FrequencyBodyGyroscopeMagnitude_std: the standard deviation of the magnitudes of the gyroscope readings, in frequency domain.
* FrequencyBodyGyroscopeJerkMagnitude_mean: the mean of the magnitudes of the gyroscope jerk readings, in frequency domain.
* FrequencyBodyGyroscopeJerkMagnitude_std: the standard deviation of the magnitudes of the gyroscope jerk readings, in frequency domain.

