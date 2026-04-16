%goal is to visualize the simulation
function sim_plot(fire, drones, time) %fire holds grid, drones hold positions, time holds current sim time

    imagesc(fire.intensity); %display fire 
    colorbar;
    title("Time = " + time)
    hold on;

    for i = 1:length(drones) %loop thru every drone
        pos = drones(i).position;
        plot(pos(2), pos(1), 'ro', 'MarkerSize', 8, 'LineWidth', 2); %make drone red circle
    end

    hold off;
    drawnow;

end
