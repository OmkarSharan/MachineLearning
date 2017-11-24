% loding data
data = load('ex1data1.txt');
x = data(:,1);
y = data(:,2);
m = length(y);

%plotting the figure
figure;
plot(x, y, 'rx','MarkerSize',10);
xlabel = ('profit in $10,000');
ylabel = ('population of the city 10,000s');

theta = zeros(2, 1);
X = [ones(m,1), x];
%calulating cost function
j = CostFunctionSingle(X, y, theta);
alpha = 0.01;
iteration = 1000;
%calulate gradient descent
theta = GradientDescentSingle(X, y, alpha, iteration, theta);
disp(theta)
