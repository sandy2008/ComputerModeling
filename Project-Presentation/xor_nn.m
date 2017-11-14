function [THETA1_new, THETA2_new] = xor_nn(XOR, THETA1, THETA2, init_w=0, learn=0, alpha=0.01)
if (init_w == 1)
    THETA1 = 2*rand(2,3) - 1;
    THETA2 = 2*rand(1,3) - 1; %generates parametes at first
endif

J = 0.0;
T1_DELTA = zeros(size(THETA1));
T2_DELTA = zeros(size(THETA2));
m = 0; %initilization

for i = 1:rows(XOR)
A1 = [1; XOR(i,1:2)'];
Z2 = THETA1 * A1;
A2 = [1; sigmoid(Z2)];
Z3 = THETA2 * A2;
h = sigmoid(Z3);
J = J + ( XOR(i,3) * log(h) ) + ( (1 - XOR(i,3)) * log(1 - h) );
m = m + 1;

if (learn == 1)
    delta3 = h - XOR(i,3);
    delta2 = ((THETA2' * delta3) .* (A2 .* (1 - A2)))(2:end);
    T2_DELTA = T2_DELTA + (delta3 * A2');
    T1_DELTA = T1_DELTA + (delta2 * A1');
else
    disp('Hypothesis for '), disp(XOR(i,1:2)), disp('is '), disp(h);
endif
endfor
J = J / -m;

if (learn==1)

    THETA1 = THETA1 - (alpha * (T1_DELTA / m));
    THETA2 = THETA2 - (alpha * (T2_DELTA / m));
else
    disp('J: '), disp(J); %output deviation
endif

THETA1_new = THETA1;
THETA2_new = THETA2;
endfunction