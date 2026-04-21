% my goal is to summarize results as shown in code pdf, i will make summary
% table using struct2table and auto save a CSV and a .MAT file with the
% data
function results = summarize_results(drones, fire, params)

    n = length(drones); % use length drones to find amount

    for i = 1:n
        s(i).DroneID           = drones(i).id;
        s(i).CellsExtinguished = drones(i).extinguishedCells;
        s(i).DistanceTraveled  = drones(i).distanceTraveled;
    end

    results = struct2table(s); %struct2table converts the struct array into a readtable
    disp(results); %this will print it to the console

    writetable(results, 'drone_summary.csv'); %writes to a csv
    save('simulation_data.mat', 'fire', 'drones', 'params');%saves to .MAT

end
