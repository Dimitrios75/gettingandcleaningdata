# Coursera Getting and Cleaning Data Course Project

## General description:

The purpose of this project is to prepare tidy data that can be used for later analysis. 

The original working data set represents data collected from the accelerometers from the Samsung Galaxy S smartphone, as a preliminary stage within a research project on wearable computing. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## The script: run_Analysis.R.

This scripts performs the following tasks:
* Reading feature names and activity descriptions.
* Merging all the parts of the training set, in order to create a complete data set.
* Merging all the parts of the testing set, in order to create a complete data set.
* Merging both sets into a final complete data set.
* Selecting all (and only) the variables in which a mean or a standard deviation is computed.
