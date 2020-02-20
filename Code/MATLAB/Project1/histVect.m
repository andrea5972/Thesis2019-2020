% Project Hand Recognition

% Authors: Andrea Murphy
% Date: March 31, 2019
% DESC: American Sign Language Detection
% The bagOfFeatures object provides an encode method for 
% counting the visual word occurrences in an image


img = read(trainingSets(1),1);
featureVector = encode(bag, img);

% Plot the histogram of visual word occurrences
figure
bar(featureVector)
title('Visual word occurrences')
xlabel('Visual word index')
ylabel('Frequency of occurrence')
