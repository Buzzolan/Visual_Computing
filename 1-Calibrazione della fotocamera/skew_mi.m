function [A]=skew_mi(B)
    A=[ 0 -B(3) B(2);
        B(3) 0 -B(1);
        -B(2) B(1) 0;];
end