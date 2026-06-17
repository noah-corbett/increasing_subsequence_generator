function M = increasing_subsequence_generator( l, N )
%%% Generates all increasing integer subsequences of {0,...,N-1} w/ length l
    if l == 1
        M = (0:(N-1))';
    elseif l == N
        M = 0:(N-1);
    else
        first = increasing_subsequence_generator(l, N-1);
        second = increasing_subsequence_generator( l-1, N-1 );
        M = [ first; second, (N-1)*ones( size(second,1), 1 ) ];
    end
end
