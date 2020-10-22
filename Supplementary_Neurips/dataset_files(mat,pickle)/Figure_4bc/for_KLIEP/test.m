clear all
load('data.mat')
A = []
range = 0:1:49
for i = range
    eval(sprintf('A=[A;pass_%i];',i));
end
V = cell(50,5);
for i = 1:50
    for u = 1:5
        X = A{i,1}
        T = A{i,u+2}
        V{i,u} =  diag(KLIEP(X,T))
    end
end
save('data_final.mat')