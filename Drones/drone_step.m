% 1. Find the target
% 2. Move the drone
% 3. Track the distance
% 4. Extinguish the 'Fire"
% 5. Logging
% 6. Bring our boys back home

function [drones, fire] = drone_step(drones, fire, params)

for i = 1:length(drones)

% 1.
    target = find_target(drones(i), fire);
    drones(i).target = target;

% 2.
    oldPos = drones(i).position;
    newPos = move_drone(drones(i), drones, params);
    drones(i).position = newPos;

% 3.
    if ~isequal(oldPos, newPos)
        drones(i).distanceTraveled = drones(i).distanceTraveled + 1;
    end

% 4.
    [drones(i), fire] = drop_water(drones(i), fire);

% 5.
    drones(i).log = [drones(i).log; newPos];

    
disp("Drone pos:")
disp(drones(i).position)

disp("Target:")
disp(target)
end

end