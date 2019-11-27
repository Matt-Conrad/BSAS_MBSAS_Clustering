% Matthew Conrad
% 4/12/18
clear all; clc; close all;

%% Problem 12.3: BSAS Implementation

% Order 1
x = [1,1 ; 1,2 ; 2,2 ; 2,3 ; 3,3 ; 3,4 ; 4,4 ; 4,5 ; 5,5 ; 5,6 ; -4,5 ; ...
    -3,5 ; -4,4 ; -3,4]; 
% Order 2
% x = [1,1 ; 5,6 ; 1,2 ; 2,2 ; 2,3 ; -4,5 ; -3,5 ; 3,3 ; 3,4 ; 4,4 ; -4,4 ; ...
%     4,5 ; -3,4 ; 5,5]; 
% Order 3
% x = [ 1,1 ; 5,6 ; 3,3 ; 1,2 ; 2,2 ; -4,5 ; -3,5 ; 2,3 ; 3,4 ; 4,4 ; -4,4 ; ...
%     -3,4 ; 4,5 ; 5,5]; % Part c

theta = sqrt(2); % Threshold

C = BSAS(x,theta);

%% Problem 12.3: MBSAS Implementation

% Order 1
x = [1,1 ; 1,2 ; 2,2 ; 2,3 ; 3,3 ; 3,4 ; 4,4 ; 4,5 ; 5,5 ; 5,6 ; -4,5 ; ...
    -3,5 ; -4,4 ; -3,4];
% Order 2
% x = [1,1 ; 5,6 ; 1,2 ; 2,2 ; 2,3 ; -4,5 ; -3,5 ; 3,3 ; 3,4 ; 4,4 ; -4,4 ; ...
%     4,5 ; -3,4 ; 5,5]; 
% Order 3
% x = [ 1,1 ; 5,6 ; 3,3 ; 1,2 ; 2,2 ; -4,5 ; -3,5 ; 2,3 ; 3,4 ; 4,4 ; -4,4 ; ...
%     -3,4 ; 4,5 ; 5,5]; 

theta = sqrt(2); % Threshold

C = MBSAS(x,theta);