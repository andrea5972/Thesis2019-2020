% ASLtranslate II

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: American Sign Language translator 
% DESC: Creating a Datastore 

% Importing the training images by creating a datastore
aslDS = imageDatastore('asl_alphabet_train',...
'IncludeSubfolders',true,...
'LabelSource','foldernames');

% Split Data in the datastore for training and validation
[aslTrain,aslValidation] = splitEachLabel(aslDS,0.7,"randomized");




