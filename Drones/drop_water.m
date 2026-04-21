function [drone, fire] = drop_water(drone, fire, params)
drone.isSpraying = false;%for water drawing
r0 = drone.position(1);
c0 = drone.position(2);

for dr = -params.dropRadius : params.dropRadius
    for dc = -params.dropRadius : params.dropRadius
        r = r0 + dr;
        c = c0 + dc;

        if r >= 1 && r <= params.gridSize && c >= 1 && c <= params.gridSize
            if fire.intensity(r, c) > 0
                fire.intensity(r, c) = 0;
                drone.extinguishedCells = drone.extinguishedCells + 1;
                drone.isSpraying = true; %for water drawing
            end
        end
    end
end

end