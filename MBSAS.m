function [ C ] = MBSAS( x,theta )
%MBSAS Runs the BSAS algorithm on data (x)
%   Params:
%       x = Nx2 matrix containing point coordinates (N is number of points)
%       theta = threshold value for determining if point lies in a cluster
%   Outputs:
%       C = Nx1 matrix that describes the cluster that the corresponding
%           point in x belongs to

% Calculates Euclidean distance
Euclidean = @(POI, cluster) sqrt(sum((POI-mean(cluster,1)).^2));

% Initialize the important stuff
m = 1;
C = zeros(size(x,1),1); % This vector holds the cluster number and corresponds with points in x
C(1) = m;
C_means = x(C(1),:); % This matrix holds the means of the clusters

for i = 2:size(x,1)
    x_i = x(i,:);
    
    % Find the distance between x_i and the nearest cluster
    min_dist = Inf; % Distance
    min_index = 0; % Minimum distance cluster
    for j = 1:size(C_means,1)
        C_mean = C_means(j,:);
        if Euclidean(x_i,C_mean) < min_dist
            min_dist = Euclidean(x_i,C_mean);
            min_index = j;
        end
    end
    
    if min_dist > theta % If too far away, create its own cluster
        m = m + 1;
        C(i) = m;
        C_means(m,:) = x_i;
    end
end

not_assigned_index = (C == 0);

for i = 1:size(x,1)
   if (not_assigned_index(i))
        x_i = x(i,:);
        
        % Find the distance between x_i and the nearest cluster
        min_dist = Inf; % Distance
        min_index = 0; % Minimum distance cluster
        for j = 1:size(C_means,1)
            C_mean = C_means(j,:);
            if Euclidean(x_i,C_mean) < min_dist
                min_dist = Euclidean(x_i,C_mean);
                min_index = j;
            end
        end
        
        C(i) = min_index;
        cluster_indices = (C == min_index);
        C_subset = x(cluster_indices,:);
        C_means(min_index,:) = mean(C_subset,1);
   end
end

end

