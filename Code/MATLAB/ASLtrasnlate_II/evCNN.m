% ASLtranslate II 

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Evaluate and test performance

plot(info.TrainingLoss)

YValidation = aslTest.Labels;
accuracy = mean(YPred == YValidation);

aslActual = aslTest.Labels;

% nnz==non-zero elements in an array
numCorrect = nnz(YPred == aslActual);

fracCorrect = numCorrect/numel(YPred);

