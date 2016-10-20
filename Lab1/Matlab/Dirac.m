function  x = Dirac( n, N )
%DIRAC Summary of this function goes here
%   Detailed explanation goes here
if (n>(N-1))
    disp ('Values are:')
    
else
    array = zeros (1,N);

    array(n)=1;
    x= array;
end


end
