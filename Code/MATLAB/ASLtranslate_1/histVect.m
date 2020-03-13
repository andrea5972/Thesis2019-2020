
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Histogram of the occurrences of visual words in an image 

img = read(trainingSets(1),1);
featureVector = encode(bag, img);

% Plot the histogram of visual word occurrences
figure
bar(featureVector)
title('Visual Word Occurrences or Features')
xlabel('Visual Word Index')
ylabel('Frequency of occurrence')
