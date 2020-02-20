% AlexNet

% Authors: Andrea Murphy
% Date: Spring 2020
% DESC: Creating a Datastore with AlexNet


% Displays the images in the current folder
ls *.jpg
% imports AlexNet
net = alexnet;

% Create datastore
imds = imageDatastore('*.jpg');

% Extract file names
fname = imds.Files;

% reads the 3 image 
img = readimage(imds, 3);

% Classify images in datastore
preds = classify(net, imds);