clear ; close all; clc

% loading data from text file
data = load('ex2data2.txt');

%taking features form the data
x=data(:,1:2);
y=data(:,3);
m=length(y);

%ploting graph between features
%plot(x, y,'rs',10);

%Normalising the data(features)
fprintf("Normalising the data.....\n");
x_norm=x;

%initializing the mu variable and sigma vaiable
%mu = mean(x), sigma=std(x)
%x_norm = x-mu/sigma

mu=zeros(1,size(x,2));
sigma=zeros(1, size(x,2));
for i=1:size(x,2)
  mu(i)=mean(x(:,i));
  sigma(i)=std(x(:,i));
  x_norm(:,i)=(x(:,i)-mu(i))/sigma(i);
end;
%adding intercept term to x_norm(adding one extra row of ones)
ones_row = ones(m,1);
x_norm = [ones_row x_norm];
theta = zeros(3,1);
fprintf("Running Gradient descent...");
%calulating gradient descent value
alpha = 0.01;
iteration = 500;
[theta, j_history]=GD(x_norm, y, theta, alpha, iteration);

figure;    
plot(1:numel(j_history),j_history,'-b','LineWidth',2);
xlabel('number of iteration');
ylabel('cost j');