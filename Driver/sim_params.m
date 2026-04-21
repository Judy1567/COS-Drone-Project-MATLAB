%goal is to add all params discussed with group for simulation
function params = sim_params()
%grid and intensity
params.gridSize = 30;
params.initialIntensity = 1;
params.ignitionCells = [15,15];
%fire
params.spreadRate = 0.3; %this used to be 0.011 %can handle .6
params.decayRate = 0.01;
params.spreadKernel = [0 0.05 0;
                      0.05 0 0.05;
                        0 0.05 0];
%time
params.dt = 1;
params.maxtime = 100;
params.stopThreshold = 0.1;
%drones
params.droneSpeed = 5;
params.numDrones = 10;
params.dropRadius = 1;
params.dropWaterCooldown = 2;%drone has to wait 3 timesteps
%plot
params.plotStep = 1;
end
