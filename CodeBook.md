# Getting and cleaning data - run_Analysis.R Code Book

## Original set description

Each row of the datasets represents an experiment, consisting on a person performing one of six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the research team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The complete dataset was then randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed and, from each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Data set parts

Each dataset (training and test) is splitted in three parts:
* The activity code: the "y_" files.
* The variable values: the "X_" files.
* The subject perfoming the experiment: "subject_" files.

The following files contain useful information about both datasets:
* 'activity_labels.txt': Links the class labels with their activity name.
* 'features.txt': Contains the names of all features.
* 'features_info.txt': Shows information about the variables used on the feature vector.

## Script operation
* The required libraries are loaded.
* The feature names and the activity names files are read an stored in variables _varNames_ and _activities_.
* The trainig set values, the the activity codes and the experiment subjects are also read and merged in the same dataset: _trainSet_.
* Activity codes are replaced by activity names, and training set columns are properly renamed.
* Steps 3 anf 4 are repeated on the testing set: _testSet_.
* Training and testing sets are merged: _allDataSet_.
* Variables (_myVars_) with mean values or standard deviation values stored on them are selected: _resultDataSet_.
* The _resultDataSet_ is shown.
