%goal is to add all params discussed with group for simulation
function params = sim_params()
%grid and intensity
params.gridSize = 30;
params.initialIntensity = 1;
params.ignitionCells = [15,15];
%fire
params.spreadRate = 0.5; %this used to be 0.011 %can handle .6
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
%plot
params.plotStep = 1;
end
