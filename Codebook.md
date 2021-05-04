## Codebook for Data Cleaning Assignment

Data was found extracted from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Feature Selection 
=================

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

Final dataset includes the average of each variable for each activity and subject.  Variables included in the final dataset include:

Variable Number	Variable Name	Type
1	Subject	Integer
2	label	Integer
3	tBodyAcc.mean...X	Numeric
4	tBodyAcc.mean...Y	Numeric
5	tBodyAcc.mean...Z	Numeric
6	tGravityAcc.mean...X	Numeric
7	tGravityAcc.mean...Y	Numeric
8	tGravityAcc.mean...Z	Numeric
9	tBodyAccJerk.mean...X	Numeric
10	tBodyAccJerk.mean...Y	Numeric
11	tBodyAccJerk.mean...Z	Numeric
12	tBodyGyro.mean...X	Numeric
13	tBodyGyro.mean...Y	Numeric
14	tBodyGyro.mean...Z	Numeric
15	tBodyGyroJerk.mean...X	Numeric
16	tBodyGyroJerk.mean...Y	Numeric
17	tBodyGyroJerk.mean...Z	Numeric
18	tBodyAccMag.mean..	Numeric
19	tGravityAccMag.mean..	Numeric
20	tBodyAccJerkMag.mean..	Numeric
21	tBodyGyroMag.mean..	Numeric
22	tBodyGyroJerkMag.mean..	Numeric
23	fBodyAcc.mean...X	Numeric
24	fBodyAcc.mean...Y	Numeric
25	fBodyAcc.mean...Z	Numeric
26	fBodyAcc.meanFreq...X	Numeric
27	fBodyAcc.meanFreq...Y	Numeric
28	fBodyAcc.meanFreq...Z	Numeric
29	fBodyAccJerk.mean...X	Numeric
30	fBodyAccJerk.mean...Y	Numeric
31	fBodyAccJerk.mean...Z	Numeric
32	fBodyAccJerk.meanFreq...X	Numeric
33	fBodyAccJerk.meanFreq...Y	Numeric
34	fBodyAccJerk.meanFreq...Z	Numeric
35	fBodyGyro.mean...X	Numeric
36	fBodyGyro.mean...Y	Numeric
37	fBodyGyro.mean...Z	Numeric
38	fBodyGyro.meanFreq...X	Numeric
39	fBodyGyro.meanFreq...Y	Numeric
40	fBodyGyro.meanFreq...Z	Numeric
41	fBodyAccMag.mean..	Numeric
42	fBodyAccMag.meanFreq..	Numeric
43	fBodyBodyAccJerkMag.mean..	Numeric
44	fBodyBodyAccJerkMag.meanFreq..	Numeric
45	fBodyBodyGyroMag.mean..	Numeric
46	fBodyBodyGyroMag.meanFreq..	Numeric
47	fBodyBodyGyroJerkMag.mean..	Numeric
48	fBodyBodyGyroJerkMag.meanFreq..	Numeric
49	angle.tBodyAccMean.gravity.	Numeric
50	angle.tBodyAccJerkMean..gravityMean.	Numeric
51	angle.tBodyGyroMean.gravityMean.	Numeric
52	angle.tBodyGyroJerkMean.gravityMean.	Numeric
53	angle.X.gravityMean.	Numeric
54	angle.Y.gravityMean.	Numeric
55	angle.Z.gravityMean.	Numeric
56	tBodyAcc.std...X	Numeric
57	tBodyAcc.std...Y	Numeric
58	tBodyAcc.std...Z	Numeric
59	tGravityAcc.std...X	Numeric
60	tGravityAcc.std...Y	Numeric
61	tGravityAcc.std...Z	Numeric
62	tBodyAccJerk.std...X	Numeric
63	tBodyAccJerk.std...Y	Numeric
64	tBodyAccJerk.std...Z	Numeric
65	tBodyGyro.std...X	Numeric
66	tBodyGyro.std...Y	Numeric
67	tBodyGyro.std...Z	Numeric
68	tBodyGyroJerk.std...X	Numeric
69	tBodyGyroJerk.std...Y	Numeric
70	tBodyGyroJerk.std...Z	Numeric
71	tBodyAccMag.std..	Numeric
72	tGravityAccMag.std..	Numeric
73	tBodyAccJerkMag.std..	Numeric
74	tBodyGyroMag.std..	Numeric
75	tBodyGyroJerkMag.std..	Numeric
76	fBodyAcc.std...X	Numeric
77	fBodyAcc.std...Y	Numeric
78	fBodyAcc.std...Z	Numeric
79	fBodyAccJerk.std...X	Numeric
80	fBodyAccJerk.std...Y	Numeric
81	fBodyAccJerk.std...Z	Numeric
82	fBodyGyro.std...X	Numeric
83	fBodyGyro.std...Y	Numeric
84	fBodyGyro.std...Z	Numeric
85	fBodyAccMag.std..	Numeric
86	fBodyBodyAccJerkMag.std..	Numeric
87	fBodyBodyGyroMag.std..	Numeric
88	fBodyBodyGyroJerkMag.std..	Numeric
