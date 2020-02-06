
% ASL Recognition

% Authors: Andrea Murphy
% Date: March 31, 2019
% DESC: American Sign Language Recognition
% This is the main function
% Automatic Sign language recognition code
% Data set: https://www.kaggle.com/grassknoted/asl-alphabet

% Load Images from the database
handDatabase = imageSet('asl_alphabet_train', 'recursive');

% Store the output in a temporary folder
outputFolder = fullfile(tempdir, 'aslOutput'); 

% All the a images in the gallery A 
%figure;
%montage(handDatabase(1).ImageLocation);
%title('Motage of all the A within our database')

rootFolder = fullfile(outputFolder, 'ALS_ObjectCategories');


%Construct an array of image sets in order to scale the data
imgSets = [ imageSet('asl_alphabet_train/A'), ...
    imageSet('asl_alphabet_train/B'), ...
    imageSet('asl_alphabet_train/C') ];

% Split the database into Test and Training sets
% 80% training 20% test 
[trainingSets, testSets] = partition(imgSets, 0.2, 'randomize');

% Training set Validation
A = read(trainingSets(1),1);
B = read(trainingSets(2),1);
C = read(trainingSets(3),1);
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







