%goal is to visualize the simulation
function plot_state(fire, drones, time) %fire holds grid, drones hold positions, time holds current sim time

    imagesc(fire.intensity); %display fire 
    colorbar;
    title("Time = " + time)
    hold on;

    for i = 1:length(drones) %loop thru every drone
        pos = drones(i).position;
        plot(pos(2), pos(1), 'rx', 'MarkerSize', 8, 'LineWidth', 2); %make drone red x "looks like drone"-owen
    %water gun
        if drones(i).isSpraying
                target = drones(i).target;
                tr = target(1);
                tc = target(2);
    
                % draw 3 water drops aimed at target
                for k = 1:3
                    t = k / 3; % droplet position fraction
                    x = pos(2) + t * (tc - pos(2));
                    y = pos(1) + t * (tr - pos(1));
    
                    plot(x, y, 'o','MarkerSize', 4,'MarkerFaceColor', 'cyan','MarkerEdgeColor', 'none');
                end
        end

    
    end

    hold off;
    drawnow;

end
