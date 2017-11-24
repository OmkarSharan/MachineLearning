function j = computeCostMulti(x_norm, y, theta)
  m=length(y);
  j = (1/(2*m))*sum(power((x_norm*theta - y),2));
end;