%code written in Pseudocode for simulation
function [fire, drones, results] = run_simulation(params)
fire = init_fire(params);
drones = init_drones(params);

time = 0;

while (time < params.maxtime) && (max(fire.intensity(:)) >= params.stopThreshold)
    fire = fire_step(fire, params);
    [drones, fire] = drone_step(drones, fire, params);
    
    sim_plot(fire, drones, time);
    time = time + params.dt;
end
results = summarize_results(drones, fire, params);
end
