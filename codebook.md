### Setup - 561 measurements involving 30 volunteers engaged in 
### six different activities wearing their smart Phone on their waist.
### accelerometer and gyroscope signals were captured on 3-axis.
### Each variable starting from column 3 contains the average of each measurement
### for a given activity and given subject.
### For a variable name, a camel case was used because using all low case
### for a long variable name makes it very difficult to read it.
### Moroever, in Java programs, using a Camel case is a standard.


X, Y, Z represents 3 different axis.

Accelerometer and Gyroscope indicates the source of the signal.

The jerk signals were derived from body linear acceleration and angular velocity.

The prefix 't' denotes time domain signals.

The prefix 'f' denotes a Fast Fourier Transformation applied to these signals.



The column number from the original dataset and the newly assigned variable names

were captured in the input file titled 'variable_col_names.txt'.


When the variable name becomes long, the standard deviation has been shortened to  "STD".

* Column 1 has characters to denote activity names

* Column 2 has an integer ID.

* All the other variables(columns) contain a numeric value.


1 activityName - one of the six activities measured (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

2 subectID - ID of the subject (1-30)

3 tBodyAccelerometerMeanX - Accelerometer mean on the X axis

4 tBodyAccelerometerMeanY - Accelerometer mean on the Y axis

5 tBodyAccelerometerMeanZ - Accelerometer mean on the Z axis

6 tBodyAccelerometerStandardDeviationX

7 tBodyAccelerometerStandardDeviationY

8 tBodyAccelerometerStandardDeviationZ

9 tGravityAccelerometerMeanX

10 tGravityAccelerometerMeanY

11 tGravityAccelerometerMeanZ

12 tGravityAccelerometerStandardDeviationX

13 tGravityAccelerometerStandardDeviationY

14 tGravityAccelerometerStandardDeviationZ

15 tBodyAccelerometerJerkMeanX

16 tBodyAccelerometerJerkMeanY

17 tBodyAccelerometerJerkMeanZ

18 tBodyAccelerometerJerkStandardDeviationX

19 tBodyAccelerometerJerkStandardDeviationY

20 tBodyAccelerometerJerkStandardDeviationZ

21 tBodyGyroscopeMeanX

22 tBodyGyroscopeMeanY

23 tBodyGyroscopeMeanZ

24 tBodyGyroscopeStandardDeviationX

25 tBodyGyroscopeStandardDeviationY

26 tBodyGyroscopeStandardDeviationZ

27 tBodyGyroscopeJerkMeanX

28 tBodyGyroscopeJerkMeanY

29 tBodyGyroscopeJerkMeanZ

30 tBodyGyroscopeJerkStandardDeviationX

31 tBodyGyroscopeJerkStandardDeviationY

32 tBodyGyroscopeJerkStandardDeviationZ

33 tBodyAccelerometerMagnitudeMean

34 tBodyAccelerometerMagnitudeSTD

35 tGravityAccelerometerMagnitudeMean

36 tGravityAccelerometerMagnitudeSTD

37 tBodyAccelerometerJerkMagnitudeMean

38 tBodyAccelerometerJerkMagnitudeSTD

39 tBodyGryroscopeMagnitudeMean

40 tBodyGyroscopeMagnitueSTD

41 tBodyGyroscopeJerkMagnitudeMean

42 tBodyGyroscopeJerkMagnitudeSTD

43 fBodyAccelerometerMeanX

44 fBodyAccelerometerMeanY

45 fBodyAccelerometerMeanZ

46 fBodyAccelerometerStandardDeviationX

47 fBodyAccelerometerStandardDeviationY

48 fBodyAccelerometerStandardDeviationZ

49 fBodyAccelerometerJerkMeanX

50 fBodyAccelerometerJerkMeanY

51 fBodyAccelerometerJerkMeanZ

52 fBodyAccelerometerJerkStandardDeviationX

53 fBodyAccelerometerJerkStandardDeviationY

54 fBodyAccelerometerJerkStandardDeviationZ

55 fBodyGyroscopeMeanX

56 fBodyGyroscopeMeanY

57 fBodyGyroscopeMeanZ

58 fBodyGyroscopeStandardDeviationX

59 fBodyGyroscopeStandardDeviationY

60 fBodyGyroscopeStandardDeviationZ

61 fBodyAccelerometerMagnitudeMean

62 fBodyAccelerometerMagnitudeSTD

63 fBodyAccelerometerJerkMagnitudeMean

64 fBodyAccelerometerJerkMagnitudeSTD

65 fBodyGryroscopeMagnitudeMean

66 fBodyGryroscopeMagnitudeSTD

67 fBodyGyroscopeJerkMagnitudeMean

68 fBodyGyroscopeJerkMagnitudeSTD
