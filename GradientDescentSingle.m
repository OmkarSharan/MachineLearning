function [j_history, theta] = GradientDescentSingle(X, y, alpha, iteration, theta)
  m=length(y);
  for i=1:iteration
     error = (X*theta) - y; % error is (m*1) matrix
     temp0 = theta(1) - (alpha/m)*(sum(error.*X(:,1)));
     temp1 = theta(2) - (alpha/m)*(sum(error.*X(:,2)));
     theta = [temp0;temp1];
     j_history(i) = CostFunctionSingle(X, y, theta);
   end;
 end;
 