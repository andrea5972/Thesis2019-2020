
% ASLtranslate
% Author: Andrea Murphy
% Date: Spring 2020
% DESC: American Sign Language translator 
% Main function

% Store the output in a temporary folder
outputFolder = fullfile(tempdir, 'aslOutput'); 

% Load Images into a database
handDatabase = fullfile(outputFolder ,'asl_alphabet_train', 'recursive');

% All the a images in the gallery A 
%figure;
%montage(handDatabase(1).ImageLocation);
%title('Motage of all the A within our database')

%rootFolder = fullfile(outputFolder, 'ALS_ObjectCategories');

%Construct an array of image sets in order to scale the data
imgSets = [ imageSet('asl_alphabet_train/A'), ...
    imageSet('asl_alphabet_train/B'), ...
    imageSet('asl_alphabet_train/C'), ...
    imageSet('asl_alphabet_train/D')];
%     imageSet('asl_alphabet_train/E'), ...
%     imageSet('asl_alphabet_train/F'), ...
%     imageSet('asl_alphabet_train/G'), ...
%     imageSet('asl_alphabet_train/H'), ...
%     imageSet('asl_alphabet_train/I'), ...
%     imageSet('asl_alphabet_train/J'), ...
%     imageSet('asl_alphabet_train/K'), ...
%     imageSet('asl_alphabet_train/L'), ...
%     imageSet('asl_alphabet_train/M'), ...
%     imageSet('asl_alphabet_train/N'), ...
%     imageSet('asl_alphabet_train/O'), ...
%     imageSet('asl_alphabet_train/P'), ...
%     imageSet('asl_alphabet_train/Q'), ...
%     imageSet('asl_alphabet_train/R'), ...
%     imageSet('asl_alphabet_train/S'), ...
%     imageSet('asl_alphabet_train/T'), ...
%     imageSet('asl_alphabet_train/U'), ...
%     imageSet('asl_alphabet_train/V'), ...
%     imageSet('asl_alphabet_train/W'), ...
%     imageSet('asl_alphabet_train/X'), ...
%     imageSet('asl_alphabet_train/Y'), ...
%     imageSet('asl_alphabet_train/Z')];

% Split the database into validation and training sets
% 30% for training and 70% for validation  
[trainingSets, validationSets] = partition(imgSets, 0.3, 'randomize');

% Training set Validation
%A = read(trainingSets(1),1);
%B = read(trainingSets(2),1);
%C = read(trainingSets(3),1);
%D = read(trainingSets(4),1);
%E = read(trainingSets(5),1);
%F = read(trainingSets(6),1);
%G = read(trainingSets(7),1);
%H = read(trainingSets(8),1);

%figure
%subplot(3,4,1);
%imshow(A)
%subplot(3,4,2);
%imshow(B)
%subplot(3,4,3);
%imshow(C)
%subplot(3,4,4);
%imshow(D)
%subplot(3,4,5);
%imshow(E)
%subplot(3,4,6);
%imshow(F)
%subplot(3,4,7);
%imshow(G)
%subplot(3,4,8);
%imshow(H)
%subplot(3,4,9);







