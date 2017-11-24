function j = CostFunctionSingle(X, y, theta)
  m = length(y);
  h = X*theta;
  diff =(h-y).^2;
  j=1/(2*m)*sum(diff);
end;

  