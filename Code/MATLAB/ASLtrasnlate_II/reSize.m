% ASLtranslate II 

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: preprocessing all images to fit AlexNet input requirements of:  
      % [227 227 3]

% Data augmentation helps prevent the network from overfitting
% Along with ensuring the input images match the requirements  
pixelRange = [-30 30];
imageAugmenter = imageDataAugmenter( ...
    'RandXReflection',true, ...
    'RandXTranslation',pixelRange, ...
    'RandYTranslation',pixelRange);
augTrain = augmentedImageDatastore(inputSize(1:2),aslTrain, ...
    'DataAugmentation',imageAugmenter);

% Resize the test images
augTest = augmentedImageDatastore(inputSize(1:2),aslTest);