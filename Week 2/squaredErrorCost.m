%function cost = squaredErrorCost(A, b, x)
 % auxCost = norm(A*x - b);
 % cost = auxCost^2;
%endfunction

function cost = squaredErrorCost(A, b, x)
  delta = (A*x - b) .^2;
  cost = sum(delta);
endfunction