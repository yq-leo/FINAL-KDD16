%% run cora
load('cora.mat');
alpha = 0.5; maxiter = 30; tol = 1e-4;
H = full(H);
S = FINAL(cora1, cora2, cora1_node_feat, cora2_node_feat, {}, {}, H, alpha, maxiter, tol);

M = greedy_match(S);
[row, col] = find(M);
acc = size(intersect([col row], gnd, 'rows'), 1)/size(gnd, 1);
