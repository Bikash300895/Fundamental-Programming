%% Classify Sequence Data Using LSTM Networks
%% Preprocess the data
%%
%% Loading data dir
digitDatasetPath = 'C:\Users\user\Documents\datasets\char\DigitDataset';
digitData = imageDatastore(digitDatasetPath,...
    'IncludeSubfolders',true,'LabelSource','foldernames');

%% Data preprocessing
X = cell(10000, 1);
for i = 1:10000
   X{i} = double(imread(digitData.Files{i}));
end

Y = digitData.Labels;

%% spliting the data into train and test
perm = randperm(10000);

x_train = cell(8000, 1);
x_test = cell(2000, 1);
y_train = Y(1:8000);
y_test = Y(8001:10000);  % just creating a dummy metrix of right shape

for i = 1:8000
    x_train{i} = X{perm(i)};
    y_train(i) = Y(perm(i));
end

for i = 1:2000
    j = i + 8000;
    x_test{i} = X{perm(j)};
    y_test(i) = Y(perm(j));
end

%% 
% 
% 
% 
%% Define LSTM Network Architecture
% Define the LSTM network architecture. Specify the input size to be sequences 
% of size 28 (the dimension of the input data). Specify an LSTM layer with an 
% output size of 100, and output the last element of the sequence. Finally, specify 
% nine classes by including a fully connected layer of size 10, followed by a 
% softmax layer and a classification layer.
%%
inputSize = 28;
outputSize = 100;
outputMode = 'last';
numClasses = 10;

layers = [ ...
    sequenceInputLayer(inputSize)
    lstmLayer(outputSize,'OutputMode',outputMode)
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];
%% 
% Now, specify the training options. Choose a mini-batch size of 32 to reduce 
% the amount of padding in the mini-batches. Set the maximum number of epochs 
% to 150 (25 maybe enough), and specify to not shuffle the data.

maxEpochs = 25;
miniBatchSize = 32;
shuffle = 'every-epoch';

options = trainingOptions('sgdm', ...
    'MaxEpochs',maxEpochs, ...
    'MiniBatchSize',miniBatchSize, ...
    'Shuffle', shuffle);
%% Train LSTM Network
% Train the LSTM network with the specified training options by using |trainNetwork|.
%%
net = trainNetwork(x_train,y_train,layers,options);
%% Test LSTM Network 
%%
y_pred = classify(net,x_test, 'MiniBatchSize',miniBatchSize);
%% 
% Calculate the classification accuracy of the predictions.

acc = sum(y_pred == y_test)./numel(y_test)