% Project Hand Recognition

% Authors: Andrea Murphy
% Date: March 31, 2019
% DESC: American Sign Language Detection

categoryClassifier = trainImageCategoryClassifier(trainingSets, bag);

confMatrix = evaluate(categoryClassifier, trainingSets);
