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
