close all;
clear all;
clc;

%% VARIABLES
h = 10000; % Altitude (m)
M_i = 0.9; % Mach Number
r_p = 24; % Total Pressure Ratio
r_f = 1.7; % Fan Pressure Ratio
b = 4; % Bypass Ratio
m = 240; % Mass Flow Rate (kg/(m/s))
eta_p = 0.86; % Turbomachinery Polytropic Efficiency
eta_m = 0.99; % Mechanical Efficiency
rho = 0.4135; % Air Density at h (kg/m3)
T1_r = 223.25; % Ambient Temperature (K)
T1_i = T1_r;
T4_r = 1300; % Turbine Temperature (K)
T4_i = T4_r;
delta_pb = 0.04; % Combustion Pressure Loss (%)
eta_i = 0.99; % Intake Isentropic Efficiency
eta_n = 0.96; % Nozzle Insentropic Efficiency
gamma_a = 1.4; % Specific Heat Ratio Air
gamma_g = 1.333; % Specific Heat Ratio Gas
cp_a = 1005; % Specific Heat Air
cp_g = 1148; % Specific Heat Gas

%% NOTATION
% State 1 - Ambient
% State 2 - Before Fan
% State 3 - After Comp
% State 4 - After Comb
% State 5 - After Turbine


%% Pressures
P1 = 2.65*10^4; 

P2 = P1*(r_f);

P3 = P2*(r_p);

P4 = P3 - delta_pb*P3;

P5 = P1;

%% Temperatures
T2_r = T1_r*(1+((gamma_a-1)/2)*(M_i^2));
T2_i = T1_r + M_i*(T2_r-T1_r);

T3_i = T2_i*(r_p)^((gamma_a - 1)/(gamma_a));
T3_r = T2_r*(r_p)^((gamma_a - 1)/(gamma_a*eta_p));












