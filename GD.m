function[theta, j_history]=GD(x_norm, y, theta, alpha, iteration);
  m=length(y);
  j_history=ones(iteration, 1);
  for i=1:iteration
    delta = (1/m)*(x_norm'*(x_norm*theta-y));
    theta=theta-(alpha*delta);
    j_history(i)=cc(x_norm, y, theta);
  end;
end;