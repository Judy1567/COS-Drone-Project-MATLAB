function [drone, fire] = drop_water(drone, fire)

r = drone.position(1);
c = drone.position(2);

if fire.intensity(r, c) > 0
    fire.intensity(r, c) = 0;
    drone.extinguishedCells = drone.extinguishedCells + 1;
end

end