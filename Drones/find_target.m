function target = find_target(drone, fire)

[rList, cList] = find(fire.intensity > 0);

if isempty(rList)
    target = drone.position;
    return;
end

distances = abs(rList - drone.position(1)) + abs(cList - drone.position(2));
[~, idx] = min(distances);

target = [rList(idx), cList(idx)];

end