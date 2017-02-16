% Logistic Regression

clc;
clear all;

% load the data sets
X = csvread('X_trainset - Copy.csv',1);
Y = csvread('Y_trainset - Copy.csv');
[trLabels, trInstances, testLabels, testInstances] = generateCrossValidationData(X, Y, 10);

alpha =0.00001;

error_train = zeros(10,1);
error_test = zeros(10,1);

for i=1:10
    X = trLabels(:,:,i);
    Y = trInstances(:,:,i);
    X = [ones(size(X,1),1),X];
    Y = 2*(Y-0.5);
    
    X_test = testLabels(:,:,i);
    Y_test = testInstances(:,:,i);
    X_test = [ones(size(X_test,1),1),X_test];
    Y_test = 2*(Y_test-0.5);
    
    [N,D] = size(X);
    w = zeros(D,1); %initate w to zeros
    sum =0;

    for t=1:1000

        for j=1:N
            sum = sum + (Y(j)*X(j,:))/(1 + exp(Y(j)*w.'*X(j,:)'));
            Delta_E_in = -sum/N;
        end
        sum =0;
        if(Delta_E_in == 0)
            break;
        else 
            w = w - (alpha*Delta_E_in)';
        end
    end

    errors=0;
    y_cap = X*w; %y_cap is an estimate of Y
    Y_prediction = sign(y_cap);

    for k=1:length(Y_prediction)
        if sign(Y(k)) ~= sign(Y_prediction(k))
            errors = errors+1;
        end
    end
    error_train(i) = errors/N;
    
    y_cap_test = X_test*w;
    Y_test_pred = sign(y_cap_test);
    errors=0;
    
    for l=1:length(Y_test_pred)
        if sign(Y_test(l)) ~= sign(Y_test_pred(l))
            errors = errors+1;
        end
    end
    error_test(i) = errors/l;
end

sum_avg =0;
for a = 1:10
    sum_avg = sum_avg+error_test(a);
end
average_error = sum_avg/10