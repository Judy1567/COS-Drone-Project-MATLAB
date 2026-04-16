%goal is to read drone data and reuturn a table with basic info
function results = summarize_results(drones, fire, params)

    n = length(drones); % use lenght drones to find amount

    cells_extinguished = zeros(n,1); %data storage in array
    distance_traveled = zeros(n,1);

    for i = 1:n %needs to go drone by drone
        cells_extinguished(i) = drones(i).extinguishedCells;
        distance_traveled(i) = drones(i).distanceTraveled;
    end

    results = table((1:n)', cells_extinguished, distance_traveled, ...
        'VariableNames', {'DroneID','CellsExtinguished','DistanceTraveled'});
%use variable names to assign coll names to table
end
