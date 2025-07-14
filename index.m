clc;
clear;

[p,q,N] = p_q_selector(30);

lambda = lcm(p-1,q-1);
mu = 1 / lambda;
mu = mod(mu,N);

r = enc_key(N);

value = randi([1, N]);

value_enc = mod( powermod((N+1),value,N^2) * powermod(r,N,N^2), N^2);
i = powermod(value_enc,lambda,(N^2));
x = L(i,N);

value_dec = mod((mu*x),N);