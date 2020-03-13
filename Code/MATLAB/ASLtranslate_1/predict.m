
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Using the trained classifier to categorize and predict
      % new images


% img = imread('asl_alphabet_test/a1_test.jpg');
% img = imread('asl_alphabet_test/B_test.jpg');
% img = imread('asl_alphabet_test/C_test.jpg');
 img = imread('asl_alphabet_test/D_test.jpg');

[labelIdx, scores] = predict(categoryClassifier, img);

% Display the string label
categoryClassifier.Labels(labelIdx)

figure;
imshow(img); hold on
xlabel((ans),'FontSize',20,'FontWeight','bold','Color','r');
title('Test Image', 'FontSize',20,'FontWeight','bold')
hold off;