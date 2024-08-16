%% run ACM-DBLP-P
load('ACM-DBLP.mat');
alpha = 0.5; maxiter = 30; tol = 1e-4;
H = full(H);
S = FINAL(ACM, DBLP, [], [], {}, {}, H, alpha, maxiter, tol);

M = greedy_match(S);
[row, col] = find(M);
acc = size(intersect([col row], gnd, 'rows'), 1)/size(gnd, 1);
