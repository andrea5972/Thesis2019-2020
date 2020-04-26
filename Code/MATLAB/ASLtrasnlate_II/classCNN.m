% ASLtranslate II Using AlexNet

% Author: Andrea Murphy
% Date: Spring 2020
% DESC: Classify the test images using the fine-tuned network

[YPred,scores] = classify(netTransfer,augTest);

% Displays four random sample images with their predicted labels
idx = randperm(numel(aslTest.Files),4);
figure
for i = 1:4
    subplot(2,2,i)
    I = readimage(aslTest,idx(i));
    imshow(I)
    label = YPred(idx(i));
    title(string(label));
end