% ASLtranslate II 

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Training the Network 

% set training parameters
options = trainingOptions('sgdm', ...
    'MaxEpochs',6,...
    'InitialLearnRate',1e-4, ...
    'Verbose',false, ...
    'Plots','training-progress');

% Perform training
[netTransfer, info] = trainNetwork(augTrain,layers,options);
