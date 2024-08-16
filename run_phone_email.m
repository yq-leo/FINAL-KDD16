%% run phone-email
load('phone-email.mat');
alpha = 0.4; maxiter = 30; tol = 1e-4;
H = full(H);
S = FINAL(phone, email, [], [], {}, {}, H, alpha, maxiter, tol);

M = greedy_match(S);
[row, col] = find(M);
acc = size(intersect([col row], gnd, 'rows'), 1)/size(gnd, 1);
