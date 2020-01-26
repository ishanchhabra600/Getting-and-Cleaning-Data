#Code Book  
This code book summarizes the resulting data fields in tidy.txt. This dataset was cleened for future analysis. 

##Description  
The purpose of this project was to get a dataset and then clean it for future analysis. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  
  

##Missing data  
The file does not contain any missing values.  
  
##Variables    
* [1] "Subjects"                                            
* [2] "Activity"                                            
* [3] "TimeBodyAccelerometerMean-X"                         
* [4] "TimeBodyAccelerometerMean-Y"                         
* [5] "TimeBodyAccelerometerMean-Z"                         
* [6] "TimeBodyAccelerometerStd-X"                          
* [7] "TimeBodyAccelerometerStd-Y"                          
* [8] "TimeBodyAccelerometerStd-Z"                          
* [9] "TimeGravityAccelerometerMean-X"                      
* [10] "TimeGravityAccelerometerMean-Y"                      
* [11] "TimeGravityAccelerometerMean-Z"                      
* [12] "TimeGravityAccelerometerStd-X"                       
* [13] "TimeGravityAccelerometerStd-Y"                       
* [14] "TimeGravityAccelerometerStd-Z"                       
* [15] "TimeBodyAccelerometerJerkMean-X"                     
* [16] "TimeBodyAccelerometerJerkMean-Y"                     
* [17] "TimeBodyAccelerometerJerkMean-Z"                     
* [18] "TimeBodyAccelerometerJerkStd-X"                      
* [19] "TimeBodyAccelerometerJerkStd-Y"                      
* [20] "TimeBodyAccelerometerJerkStd-Z"                      
* [21] "TimeBodyGyroscopeMean-X"                             
* [22] "TimeBodyGyroscopeMean-Y"                             
* [23] "TimeBodyGyroscopeMean-Z"                             
* [24] "TimeBodyGyroscopeStd-X"                              
* [25] "TimeBodyGyroscopeStd-Y"                              
* [26] "TimeBodyGyroscopeStd-Z"                              
* [27] "TimeBodyGyroscopeJerkMean-X"                         
* [28] "TimeBodyGyroscopeJerkMean-Y"                         
* [29] "TimeBodyGyroscopeJerkMean-Z"                         
* [30] "TimeBodyGyroscopeJerkStd-X"                          
* [31] "TimeBodyGyroscopeJerkStd-Y"                          
* [32] "TimeBodyGyroscopeJerkStd-Z"                          
* [33] "TimeBodyAccelerometerMagnitudeMean"                  
* [34] "TimeBodyAccelerometerMagnitudeStd"                   
* [35] "TimeGravityAccelerometerMagnitudeMean"               
* [36] "TimeGravityAccelerometerMagnitudeStd"                
* [37] "TimeBodyAccelerometerJerkMagnitudeMean"              
* [38] "TimeBodyAccelerometerJerkMagnitudeStd"               
* [39] "TimeBodyGyroscopeMagnitudeMean"                      
* [40] "TimeBodyGyroscopeMagnitudeStd"                       
* [41] "TimeBodyGyroscopeJerkMagnitudeMean"                  
* [42] "TimeBodyGyroscopeJerkMagnitudeStd"                   
* [43] "FrequencyBodyAccelerometerMean-X"                    
* [44] "FrequencyBodyAccelerometerMean-Y"                    
* [45] "FrequencyBodyAccelerometerMean-Z"                    
* [46] "FrequencyBodyAccelerometerStd-X"                     
* [47] "FrequencyBodyAccelerometerStd-Y"                     
* [48] "FrequencyBodyAccelerometerStd-Z"                     
* [49] "FrequencyBodyAccelerometerMeanFrequency-X"           
* [50] "FrequencyBodyAccelerometerMeanFrequency-Y"           
* [51] "FrequencyBodyAccelerometerMeanFrequency-Z"           
* [52] "FrequencyBodyAccelerometerJerkMean-X"                
* [53] "FrequencyBodyAccelerometerJerkMean-Y"                
* [54] "FrequencyBodyAccelerometerJerkMean-Z"                
* [55] "FrequencyBodyAccelerometerJerkStd-X"                 
* [56] "FrequencyBodyAccelerometerJerkStd-Y"                 
* [57] "FrequencyBodyAccelerometerJerkStd-Z"                 
* [58] "FrequencyBodyAccelerometerJerkMeanFrequency-X"       
* [59] "FrequencyBodyAccelerometerJerkMeanFrequency-Y"       
* [60] "FrequencyBodyAccelerometerJerkMeanFrequency-Z"       
* [61] "FrequencyBodyGyroscopeMean-X"                        
* [62] "FrequencyBodyGyroscopeMean-Y"                        
* [63] "FrequencyBodyGyroscopeMean-Z"                        
* [64] "FrequencyBodyGyroscopeStd-X"                         
* [65] "FrequencyBodyGyroscopeStd-Y"                         
* [66] "FrequencyBodyGyroscopeStd-Z"                         
* [67] "FrequencyBodyGyroscopeMeanFrequency-X"               
* [68] "FrequencyBodyGyroscopeMeanFrequency-Y"               
* [69] "FrequencyBodyGyroscopeMeanFrequency-Z"               
* [70] "FrequencyBodyAccelerometerMagnitudeMean"             
* [71] "FrequencyBodyAccelerometerMagnitudeStd"              
* [72] "FrequencyBodyAccelerometerMagnitudeMeanFrequency"    
* [73] "FrequencyBodyAccelerometerJerkMagnitudeMean"         
* [74] "FrequencyBodyAccelerometerJerkMagnitudeStd"          
* [75] "FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency"
* [76] "FrequencyBodyGyroscopeMagnitudeMean"                 
* [77] "FrequencyBodyGyroscopeMagnitudeStd"                  
* [78] "FrequencyBodyGyroscopeMagnitudeMeanFrequency"        
* [79] "FrequencyBodyGyroscopeJerkMagnitudeMean"             
* [80] "FrequencyBodyGyroscopeJerkMagnitudeStd"              
* [81] "FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency" 

##Activity Labels    
* WALKING (value 1): subject was walking during the test  
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test  
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test  
* SITTING (value 4): subject was sitting during the test  
* STANDING (value 5): subject was standing during the test  
* LAYING (value 6): subject was laying down during the test  

