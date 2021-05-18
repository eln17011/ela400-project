function mask = createMask(left,right)

    %något med alla options

dispmap = disparitySGM(left,right);
    
mask = dispmap;
mask(mask ~= mask) = 0;
mask(mask < 60) = 0;
mask(mask >= 60) = 1;


end

