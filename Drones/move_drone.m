function newPos = move_drone(drone, drones, params)

pos = drone.position;
target = drone.target;

dr = sign(target(1) - pos(1));
dc = sign(target(2) - pos(2));

%prioritization of larger difference
if abs(target(1) - pos(1)) > abs(target(2) - pos(2))
    proposed = [pos(1)+dr, pos(2)];
    primaryMove = "row";
else
    proposed = [pos(1), pos(2)+dc];
    primaryMove = "col";
end

%clamp maxxing to the grid
proposed(1) = max(1, min(params.gridSize, proposed(1)));
proposed(2) = max(1, min(params.gridSize, proposed(2)));

%checks if proposed is occupied
occupied = false;
for j = 1:length(drones)
    if j ~= drone.id && isequal(drones(j).position, proposed)
        occupied = true;
        break;
    end
end

if occupied
    % try alternate direction
    if primaryMove == "row"
        alt = [pos(1), pos(2)+dc]; % try column
    else
        alt = [pos(1)+dr, pos(2)]; % try row
    end

    % clamp alt
    alt(1) = max(1, min(params.gridSize, alt(1)));
    alt(2) = max(1, min(params.gridSize, alt(2)));

    % check if alt is occupied
    occupied2 = false;
    for j = 1:length(drones)
        if j ~= drone.id && isequal(drones(j).position, alt)
            occupied2 = true;
            break;
        end
    end

    if ~occupied2
        newPos = alt;
    else
        newPos = pos; % stay put if both blocked
    end
else
    newPos = proposed;
end

end