% Creating a simple deep learning classifier
%% Load and explore image data
digitDatasetPath = fullfile(matlabroot, 'toolbox', 'nnet', 'nndemos', 'nndatasets', 'DigitDataset');
digitData = imageDatastore(digitDatasetPath, 'IncludeSubfolders',true,'LabelSource','foldernames');


%%
% Display some of the images
figure;
perm = randperm(10000, 20);
for i = 1:20
    subplot(4,5,i);
    imshow(digitData.Files{perm(i)});
end


%%
%check the number of digits in each category
CountLabel = digitData.countEachLabel;


%%
% we have to specify the size of the images in input layers of the network
% let's find the size of the images
img = readimage(digitData, 1);
size(img);


%% Specify the train and test set
trainingNumFiles = 750;
rng(1) % setting random seed for reproductivity
[trainingDigitData, testDigitData] = splitEachLabel(digitData, trainingNumFiles, 'randomize');


%% Defining the network
layers = [
    imageInputLayer([28, 28, 1])
    fullyConnectedLayer(100)
    reluLayer
    
    fullyConnectedLayer(10)
    softmaxLayer
    classificationLayer()
];

options = trainingOptions('sgdm', 'MaxEpochs', 15, 'InitialLearnRate', 0.0001);

% training the models
convnet = trainNetwork(trainingDigitData, layers, options);


%% Classify the Images in the Test Data and Compute Accuracy
% Run the trained network on the test set that was not used to train the
% network and predict the image labels (digits).
YTest = classify(convnet,testDigitData);
TTest = testDigitData.Labels;

%% 
% Calculate the accuracy. 
accuracy = sum(YTest == TTest)/numel(TTest)
