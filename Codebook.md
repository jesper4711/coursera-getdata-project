# Codebook course assignment for Getting and Cleaning data

The below is the full set of column variables for the cleaned data set. Columns 1-86 are extracted from the original dataset and represent activity in a set of subjects. Column 87 are activity labels and column 88 are subject labels. Rows consist of averaged variables over subjects and activity labels. Some cleaning of 
variable names were performed so that variables are always named according to convention:

myNewTidyVariableName

A few symbols were also cleaned from variable names:

"(", ")", "-" and ","

These are the variables (columns in data frame):

 [1] "tBodyAccMeanX"                    
 [2] "tBodyAccMeanY"                    
 [3] "tBodyAccMeanZ"                    
 [4] "tBodyAccStdX"                     
 [5] "tBodyAccStdY"                     
 [6] "tBodyAccStdZ"                     
 [7] "tGravityAccMeanX"                 
 [8] "tGravityAccMeanY"                 
 [9] "tGravityAccMeanZ"                 
[10] "tGravityAccStdX"                  
[11] "tGravityAccStdY"                  
[12] "tGravityAccStdZ"                  
[13] "tBodyAccJerkMeanX"                
[14] "tBodyAccJerkMeanY"                
[15] "tBodyAccJerkMeanZ"                
[16] "tBodyAccJerkStdX"                 
[17] "tBodyAccJerkStdY"                 
[18] "tBodyAccJerkStdZ"                 
[19] "tBodyGyroMeanX"                   
[20] "tBodyGyroMeanY"                   
[21] "tBodyGyroMeanZ"                   
[22] "tBodyGyroStdX"                    
[23] "tBodyGyroStdY"                    
[24] "tBodyGyroStdZ"                    
[25] "tBodyGyroJerkMeanX"               
[26] "tBodyGyroJerkMeanY"               
[27] "tBodyGyroJerkMeanZ"               
[28] "tBodyGyroJerkStdX"                
[29] "tBodyGyroJerkStdY"                
[30] "tBodyGyroJerkStdZ"                
[31] "tBodyAccMagMean"                  
[32] "tBodyAccMagStd"                   
[33] "tGravityAccMagMean"               
[34] "tGravityAccMagStd"                
[35] "tBodyAccJerkMagMean"              
[36] "tBodyAccJerkMagStd"               
[37] "tBodyGyroMagMean"                 
[38] "tBodyGyroMagStd"                  
[39] "tBodyGyroJerkMagMean"             
[40] "tBodyGyroJerkMagStd"              
[41] "fBodyAccMeanX"                    
[42] "fBodyAccMeanY"                    
[43] "fBodyAccMeanZ"                    
[44] "fBodyAccStdX"                     
[45] "fBodyAccStdY"                     
[46] "fBodyAccStdZ"                     
[47] "fBodyAccMeanFreqX"                
[48] "fBodyAccMeanFreqY"                
[49] "fBodyAccMeanFreqZ"                
[50] "fBodyAccJerkMeanX"                
[51] "fBodyAccJerkMeanY"                
[52] "fBodyAccJerkMeanZ"                
[53] "fBodyAccJerkStdX"                 
[54] "fBodyAccJerkStdY"                 
[55] "fBodyAccJerkStdZ"                 
[56] "fBodyAccJerkMeanFreqX"            
[57] "fBodyAccJerkMeanFreqY"            
[58] "fBodyAccJerkMeanFreqZ"            
[59] "fBodyGyroMeanX"                   
[60] "fBodyGyroMeanY"                   
[61] "fBodyGyroMeanZ"                   
[62] "fBodyGyroStdX"                    
[63] "fBodyGyroStdY"                    
[64] "fBodyGyroStdZ"                    
[65] "fBodyGyroMeanFreqX"               
[66] "fBodyGyroMeanFreqY"               
[67] "fBodyGyroMeanFreqZ"               
[68] "fBodyAccMagMean"                  
[69] "fBodyAccMagStd"                   
[70] "fBodyAccMagMeanFreq"              
[71] "fBodyAccJerkMagMean"              
[72] "fBodyAccJerkMagStd"               
[73] "fBodyAccJerkMagMeanFreq"          
[74] "fBodyGyroMagMean"                 
[75] "fBodyGyroMagStd"                  
[76] "fBodyGyroMagMeanFreq"             
[77] "fBodyGyroJerkMagMean"             
[78] "fBodyGyroJerkMagStd"              
[79] "fBodyGyroJerkMagMeanFreq"         
[80] "angletBodyAccMeanGravity"         
[81] "angletBodyAccJerkMeanGravityMean" 
[82] "angletBodyGyroMeanGravityMean"    
[83] "angletBodyGyroJerkMeanGravityMean"
[84] "angleXGravityMean"                
[85] "angleYGravityMean"                
[86] "angleZGravityMean"                
[87] "labels"                           
[88] "subjects"       


Here is the background info from the original data set

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

