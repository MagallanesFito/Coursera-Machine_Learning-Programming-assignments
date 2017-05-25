function A_inv_b = matrixInverseVector(A, b, x_init, alpha)
  convergenceLimit = 10^(-6);
  costFunction = 1;
  while costFunction>=convergenceLimit,
    tempX = x_init - alpha*(2*A*(A*x_init-b));
    x_init = tempX;
    auxCost = norm(A*x_init - b);
    costFunction = auxCost^2; 
   end
   A_inv_b = x_init;
endfunction