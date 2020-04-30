% ASLtranslate II

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Modifying AlexNet a pre-trained CNN to use a classification model
      % for ASLtranslate

net = alexnet;
inputSize = net.Layers(1).InputSize;

% Replace the final layers of the pretrained network
% fine-tuned last 3 layers for the new classification problem
layersTransfer = net.Layers(1:end-3);

% change the number of classes to match your data
numClasses = numel(categories(aslTrain.Labels));

% Transfer the layers to the new classification task
% by replacing the last three layers with a fully connected layer
% a softmax layer, and a classification output layer
layers = [
    layersTransfer
    fullyConnectedLayer(numClasses,'WeightLearnRateFactor',20,'BiasLearnRateFactor',20)
    softmaxLayer
    classificationLayer];