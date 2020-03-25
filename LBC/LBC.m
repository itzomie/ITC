%% Matlab code for LBC
%% This code is coded by Omkar Sulakhe.
%this code generates the code vectors for any linear block code
% Input is Parity Matrix
% Output is a codevector table

clc;
clear all;
close all;


%% Parity Matrix
P=input('Enter the parity Matrix ');
k=size(P,1);
temp=size(P,2);
n=k+temp;

%% Generator Matrix
I=eye(k);
G=[I P];

%% message signal
a=dec2bin(0:+1:2^k-1)-'0';

%% codeword generataion
C=a*G;

for i=1:2^k
    for j=1:n
        if(rem(C(i,j),2)==0)
            C(i,j)=0;
        else
            C(i,j)=1;
        end
    end
end
fprintf('\n The Codevectors \n')
disp(C)