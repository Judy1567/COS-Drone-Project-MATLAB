clear, clc, close all;
addpath('Driver')
addpath('Drones')
addpath('Fire')
params = sim_params;
[fire, drones, results] = run_simulation(params);
