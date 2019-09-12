% Project Hand Recognition
% Authors: Andrea Murphy
% Date: March 31, 2019
% DESC: American Sign Language Detection

img = imread('A1.jpg');
[labelIdx, scores] = predict(categoryClassifier, img);

categoryClassifier.Labels(labelIdx)
figure
imshow(img)