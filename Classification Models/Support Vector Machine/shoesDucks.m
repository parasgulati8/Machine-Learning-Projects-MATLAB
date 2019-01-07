load shoesducks.mat
shoesDucks1(X,Y);
function []= shoesDucks1(x, y)
n = size(x,1);
TrainIndex = randsample(n, n/2);
TestIndex = setdiff(1:n, TrainIndex);
trainingInput= x(TrainIndex,:);
trainingOutput = y(TrainIndex, :);
testInput = x(TestIndex,:);
testOutput = y(TestIndex,:);
% linear Kernel
[t , alpha , b] = svc (trainingInput, trainingOutput);
linSVC = svcoutput( trainingInput , trainingOutput , testInput , 'linear' , alpha , b) ;
linearErr= svcerror(trainingInput , trainingOutput , testInput , testOutput , 'linear' , alpha , b);
display(linearErr);

% Polynomial Kernel
polyErr = [];
global p1;
for i = 1:20
    p1 = i
    [t , alpha , b] = svc (trainingInput, trainingOutput, 'poly');
    polySVC = svcoutput( trainingInput , trainingOutput , testInput , 'poly' , alpha , b) ;  
    polyErr(i)= svcerror(trainingInput , trainingOutput , testInput , testOutput , 'poly' , alpha , b)
end
display(polyErr);
figure;
plot ( 1:20 , polyErr ) ;

ymin = min(polyErr);
display (ymin);
% RBF kernel
sigma = [];
j = 0;
err = [];
for i = 0.1: 0.2 : 5 
p1 = i ;
j = j+1;
    [t , alpha , b] = svc (trainingInput, trainingOutput, 'rbf');
    rbfSVC = svcoutput( trainingInput , trainingOutput , testInput , 'rbf' , alpha , b) ;  
    err(j)= svcerror(trainingInput , trainingOutput , testInput , testOutput , 'rbf' , alpha , b);
    sigma(j) = i;
end
figure;
plot (sigma , err);
end