function [ min_dist,max_dist ] = euclidean( data )
%EUCLIDEAN Calculates the min and max distance between all points in a data
%set
%   Params:
%       data = Nx2 matrix of data
%   Outputs:
%       min_dist = smallest distance between any 2 points
%       max_dist = largest distance between any 2 points

% Calculates Euclidean distance
Euclidean = @(point1, point2) sqrt(sum((point1-point2).^2));

N = size(data,1);
min_dist = Inf;
max_dist = -Inf;

for i = 1:N
    for j = 1:N
        if (i ~= j)
            pt1 = data(i,:);
            pt2 = data(j,:);
            dist = Euclidean(pt1,pt2);
            
            if (dist < min_dist)
                min_dist = dist;
            end
            if (dist > max_dist)
                max_dist = dist;
            end
        end
    end
end

end

