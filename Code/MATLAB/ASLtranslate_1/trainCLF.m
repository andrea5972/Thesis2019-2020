
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Training process invoked by the trainImageCategory function
        % That relies on a Support Vector Machine(SVM)
    
categoryClassifier = trainImageCategoryClassifier(trainingSets, bag);

% Evaluates the classifier performance
confMatrix = evaluate(categoryClassifier, trainingSets);
