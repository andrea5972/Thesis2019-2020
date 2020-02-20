% AlexNet

% Authors: Andrea Murphy
% Date: Spring 2020
% DESC: Using the pre-trained network AlexNet to classify images 

% import image
figure
img = imread('seashore.jpg');
imshow(img)
title('Original Image')

% Re-sizing image to AlexNet requirements
figure
sizedimg = imresize(img,[227 227]);
imshow(sizedimg)
title('re-sized Image')

net = alexnet;
categorynames = net.Layers(end).ClassNames;

% The classify function gives the class
% to which the network assigns the highest score
% pred: network's prediction 
% scores: prediction scores
[pred,scores] = classify(net,sizedimg);

% display the scores
figure
bar(scores)

% Threshold scores
% Extracting only the significant scores >0.1
highscores = scores > 0.01;

% display the threshold
bar(scores(highscores))
xticklabels(categorynames(highscores))
title('thresholded scores')

