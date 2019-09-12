% Project Hand Recognition

% Authors: Andrea Murphy
% Date: March 31, 2019
% DESC: American Sign Language Detection
%%% Using Bag-of-features to
%%% Extract SURF features from all image files
%%% Constructs the visual vocabulary by reducing
%%% the number of features through quantization of feature
%%% space using K-means clustering

% Bag-of-Features 
bag = bagOfFeatures(trainingSets);

