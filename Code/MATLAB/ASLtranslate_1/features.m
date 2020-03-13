
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
%%% Using Bag-of-features to
%%% Extract SURF features from all images
%%% Constructs the visual vocabulary by reducing
%%% the number of features through quantization of feature
%%% space using K-means clustering

% Bag-of-Features 
bag = bagOfFeatures(trainingSets);

