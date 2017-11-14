THETA1 = 2*rand(2,3) - 1;
THETA2 = 2*rand(1,3) - 1; %Initialization
A1 = [1; 0; 0];
Z2 = THETA1 * A1;
A2 = [1; sigmoid(Z2)];
Z3 = THETA2 * A2;
h = sigmoid(Z3);