
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Evaluate the classifier on the validationSet

confMatrix = evaluate(categoryClassifier, validationSets);

% Compute average accuracy
mean(diag(confMatrix));