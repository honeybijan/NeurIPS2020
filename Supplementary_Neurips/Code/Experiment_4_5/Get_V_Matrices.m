load('MultiFeatureBias/multi_datasets3.mat')

data = cancer;
train_inds = train_inds_cancer;
test_inds = test_inds_cancer;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:) + 1, :);
    
    train_x = train(:, 1:end-1);
    test_x = test(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_cancer = ulsif_weights;
kliep_cancer = kliep_weights;



data = diabetes;
train_inds = train_inds_diabetes;
test_inds = test_inds_diabetes;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:) + 1, :);
    
    train_x = train(:, 1:end-1);
    test_x = test(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_diabetes = ulsif_weights;
kliep_diabetes = kliep_weights;

data = twonorm;
train_inds = train_inds_twonorm;
test_inds = test_inds_twonorm;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:) + 1, :);
    
    train_x = train(:, 1:end-1);
    test_x = test(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_twonorm = ulsif_weights;
kliep_twonorm = kliep_weights;

data = ringnorm;
train_inds = train_inds_ringnorm;
test_inds = test_inds_ringnorm;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:) + 1, :);
    
    train_x = train(:, 1:end-1);
    test_x = test(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_ringnorm = ulsif_weights;
kliep_ringnorm = kliep_weights;

data = banknote;
train_inds = train_inds_banknote;
test_inds = test_inds_banknote;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:) + 1, :);
    
    train_x = train(:, 1:end-1);
    test_x = test(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_banknote = ulsif_weights;
kliep_banknote = kliep_weights;
