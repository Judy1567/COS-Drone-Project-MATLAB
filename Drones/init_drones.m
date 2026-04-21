function drones = init_drones(params)

drones = struct([]);

for i = 1:params.numDrones
    drones(i).id = i;
    drones(i).isSpraying = false;%for water drawing 
    drones(i).dropWaterCooldown = 0; %defines cooldown field

    placed = false;

    while ~placed
        pos = [randi(params.gridSize), randi(params.gridSize)];

        overlap = false;
        for j = 1:i-1
            if isequal(drones(j).position, pos)
                overlap = true;
                break;
            end
        end

        if ~overlap
            drones(i).position = pos;
            placed = true;
        end
    end

    drones(i).target = [0 0];
    drones(i).waterLevel = 1;

    drones(i).distanceTraveled = 0;
    drones(i).extinguishedCells = 0;

    drones(i).log = drones(i).position;
end

end