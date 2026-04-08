% builds initial fire.intensity matrix 
function fire = init_fire(params)
    fire.intensity = zeros(params.gridSize, params.gridSize);
%setting ignition cells
    for k = 1:size(params.ignitionCells, 1)
        r = params.ignitionCells(k, 1);
        c = params.ignitionCells(k, 2);
        fire.intensity(r, c) = params.initialIntensity;
    end

    %Extra credit kernel--take out comment when ready to use
    %fire.spread = params.spreadKernel;
end 