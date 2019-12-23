function f = give_area(labels,wanted_stats)
    stats = regionprops(labels, 'all'); % to query all the properties of all BLOBs
    stats(wanted_stats); % to take the desired object

    f = stats(wanted_stats).Area;
    % the formula to calculate the area of the object
end