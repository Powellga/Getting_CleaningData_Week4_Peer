Code Book
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals time_acceleration-XYZ and time_gyroscope-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (time_body-XYZ and time_gravity_acceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (time_body_acceleration_jerk-XYZ and time_body_gyroscope_jerk-XYZ).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency_body_acceleration-XYZ, frequency_body_acceleration_jerk, frequency_body_gyroscope. (Note the 'frequency' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The units are:

acceleration: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'.

The body acceleration signal obtained by subtracting the gravity from the total acceleration.

Gyroscope: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

From the original data, the mean and standard deviation (std) for each variable were calculated.

The subject column identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

The full list of columns is:

subject
activity
time_body_acceleration.mean.x
time_body_acceleration.mean.y
time_body_acceleration.mean.z
time_body_acceleration.std.x
time_body_acceleration.std.y
time_body_acceleration.std.z
time_gravity_acceleration.mean.x
time_gravity_acceleration.mean.y
time_gravity_acceleration.mean.z
time_gravity_acceleration.std.x
time_gravity_acceleration.std.y
time_gravity_acceleration.std.z
time_body_acceleration_jerk.mean.x
time_body_acceleration_jerk.mean.y
time_body_acceleration_jerk.mean.z
time_body_acceleration_jerk.std.x
time_body_acceleration_jerk.std.y
time_body_acceleration_jerk.std.z
time_body_gyroscope.mean.x
time_body_gyroscope.mean.y
time_body_gyroscope.mean.z
time_body_gyroscope.std.x
time_body_gyroscope.std.y
time_body_gyroscope.std.z
time_body_gyroscope_jerk.mean.x
time_body_gyroscope_jerk.mean.y
time_body_gyroscope_jerk.mean.z
time_body_gyroscope_jerk.std.x
time_body_gyroscope_jerk.std.y
time_body_gyroscope_jerk.std.z
frequency_body_acceleration.mean.x
frequency_body_acceleration.mean.y
frequency_body_acceleration.mean.z
frequency_body_acceleration.std.x
frequency_body_acceleration.std.y
frequency_body_acceleration.std.z
frequency_body_acceleration_jerk.mean.x
frequency_body_acceleration_jerk.mean.y
frequency_body_acceleration_jerk.mean.z
frequency_body_acceleration_jerk.std.x
frequency_body_acceleration_jerk.std.y
frequency_body_acceleration_jerk.std.z
frequency_body_gyroscope.mean.x
frequency_body_gyroscope.mean.y
frequency_body_gyroscope.mean.z
frequency_body_gyroscope.std.x
frequency_body_gyroscope.std.y
frequency_body_gyroscope.std.z

© 2020 GitHub, Inc.