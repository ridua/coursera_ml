A = [1, 2, 3; 4, 5, 6]
B = [7, 8; 9, 10; 11, 12]
M = A*B


inverA = inv(M)

pdt_a_inverA = M * inverA


% transpose

K = [1,2,0;0,5,6;7,0,9]
K_transpose = K'