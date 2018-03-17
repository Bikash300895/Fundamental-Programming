%% Reconstruct Handwritten Digit Images Using Sparse Autoencoder  

%% 
% Load the training data. 
XTrain = digitTrainCellArrayData;

%%
% The training data is a 1-by-5000 cell array, where each cell containing
% a 28-by-28 matrix representing a synthetic image of a handwritten digit.  

%% 
% Train an autoencoder with a hidden layer containing 25 neurons. 
hiddenSize = 25;
autoenc = trainAutoencoder(XTrain,hiddenSize,...
        'L2WeightRegularization',0.004,...
        'SparsityRegularization',4,...
        'SparsityProportion',0.15);  

%% 
% Load the test data. 
XTest = digitTestCellArrayData; 

%%
% The test data is a 1-by-5000 cell array, with each cell containing a 28-by-28
% matrix representing a synthetic image of a handwritten digit.  

%% 
% Reconstruct the test image data using the trained autoencoder, |autoenc|. 
xReconstructed = predict(autoenc,XTest);  

%% 
% View the actual test data. 
figure;
for i = 1:20
    subplot(4,5,i);
    imshow(XTest{i});
end     

%% 
% View the reconstructed test data. 
figure;
for i = 1:20
    subplot(4,5,i);
    imshow(xReconstructed{i});
end      

