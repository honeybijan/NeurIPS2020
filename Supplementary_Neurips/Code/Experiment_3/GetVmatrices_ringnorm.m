clear all
load('datasets.mat')

data = ringnorm_data;
train_inds = train_inds_ringnorm;
test_inds = test_inds_ringnorm;
ulsif_weights = zeros(length(data(1, :)) - 1, 100);
kliep_weights = zeros(length(data(1, :)) - 1, 100);
% Iterate through partitions of this dataset and calculate V matrices
for i = 1:100
    train = data(train_inds(i,:) + 1, :);
    test = data(test_inds(i,:)+1, :);
    test_sub = test;
    train_x = train(:, 1:end-1);
    test_x = test_sub(:, 1:end-1);
    kliep_weights(i,:) = KLIEP (train_x', test_x');
    ulsif_weights(i,:) = uLSIF (train_x', test_x');
end

ulsif_ringnorm = ulsif_weights;
kliep_ringnorm = kliep_weights;
save('matlab_ringnorm.mat')