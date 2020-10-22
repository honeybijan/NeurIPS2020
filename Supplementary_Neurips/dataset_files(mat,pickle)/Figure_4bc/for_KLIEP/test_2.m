clear all
load('data_2.mat')
A = []
range = 0:1:49
for i = range
    eval(sprintf('A=[A;pass_%i];',i));
end
V = cell(50,1);
for i = 1:50
    X = A{i,1}
    V{i,1} =  diag(KLIEP(X,S))
   
end
save('data_final_2.mat')