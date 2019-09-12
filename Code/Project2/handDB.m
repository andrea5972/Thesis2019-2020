
% Hand Recognition
% Authors: Andrea Murphy
% Date: August 2019
% DESC: American Sign Language Detection recognition code
% Uploading the image gallery to use for the database 
% Dataset: https://www.kaggle.com/grassknoted/asl-alphabet


% Load Images from the dataset into a image 

handDatabase = imageSet('asl_alphabet_train', 'recursive');

% Store the output in a temporary folder
outputFolder = fullfile(tempdir, 'aslOutput'); % define output folder

rootFolder = fullfile(outputFolder, 'ALS_ObjectCategories');

% Create array of image sets
imgSets = [ imageSet('asl_alphabet_train/A'), ...
    imageSet('asl_alphabet_train/B'), ...
    imageSet('asl_alphabet_train/C'), ...
    imageSet('asl_alphabet_train/D'), ...
    imageSet('asl_alphabet_train/E'), ...
    imageSet('asl_alphabet_train/F'), ...
    imageSet('asl_alphabet_train/G'), ...
    imageSet('asl_alphabet_train/H'), ...
    imageSet('asl_alphabet_train/I'), ...
    imageSet('asl_alphabet_train/J'), ...
    imageSet('asl_alphabet_train/K'), ...
    imageSet('asl_alphabet_train/L'), ...
    imageSet('asl_alphabet_train/M'), ...
    imageSet('asl_alphabet_train/N'), ...
    imageSet('asl_alphabet_train/O'), ...
    imageSet('asl_alphabet_train/P'), ...
    imageSet('asl_alphabet_train/Q'), ...
    imageSet('asl_alphabet_train/R'), ...
    imageSet('asl_alphabet_train/S'), ...
    imageSet('asl_alphabet_train/T'), ...
    imageSet('asl_alphabet_train/U'), ...
    imageSet('asl_alphabet_train/V'), ...
    imageSet('asl_alphabet_train/W'), ...
    imageSet('asl_alphabet_train/X'), ...
    imageSet('asl_alphabet_train/Y'), ...
    imageSet('asl_alphabet_train/Z') ...
    ];

% Partitioning the database into training and validation sets
[trainingSets, validationSets] = partition(imgSets, 0.2, 'randomize');

A = read(trainingSets(1),1);
B = read(trainingSets(2),1);
C = read(trainingSets(3),1);
D = read(trainingSets(4),1);
E = read(trainingSets(5),1);
F = read(trainingSets(6),1);
G = read(trainingSets(7),1);
H = read(trainingSets(8),1);
I = read(trainingSets(9),1);
J = read(trainingSets(10),1);
K = read(trainingSets(11),1);
L = read(trainingSets(12),1);
M = read(trainingSets(13),1);
N = read(trainingSets(14),1);
O = read(trainingSets(15),1);
P = read(trainingSets(16),1);
Q = read(trainingSets(17),1);
R = read(trainingSets(18),1);
S = read(trainingSets(19),1);
T = read(trainingSets(20),1);
U = read(trainingSets(21),1);
V = read(trainingSets(22),1);
W = read(trainingSets(23),1);
X = read(trainingSets(24),1);
Y = read(trainingSets(25),1);
Z = read(trainingSets(26),1);




