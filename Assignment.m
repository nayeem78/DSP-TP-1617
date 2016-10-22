
function  x = Dirac( n, N )

  if (n>(N-1))
     disp ('Values are:')
    
  else
    array = zeros (1,N);

    array(n)=1;
    x= array;
  end
end


function  x1 = step( n, N )

if (n>(N-1) |n<1)
    disp ('Values are:')
    
else
    array = zeros (1,N);

    array(n:N)=1;
    x= array;
end


end

function x2 = ramp(a,n,N)
    if (n>(N-1) || n<1)
        disp('out of range')
        x2=0;
    else
        array=zeros(1,N);
        for i=n:N
            array(i)=a*(i-n);
        end
        x2 = array;
    end
end


function x3 = geo(a,n,N)
    if (n>(N-1) || n<1)
        disp('out of range')
        x3=0;
    else
        array=zeros(1,N);
        for i=n:N
            array(i)=a^i;
        end
        x3=array;
    end
end


function x4 = box(a,n,N)
    if (n <(1+a) && n> (N-a))
        disp('out of range!')
        x4=0;
    else
        array=zeros(1,N);
        for i=(n-a):(n+a)
            array(i)=1;
        end
        x4=array;
    end
end


function x5 = sin(f,n,Ts)

  t = [0:1/Ts:n/f];
  x=sin(2*pi*f*t);

end


function g = gaussian(N)

y = randn(1,N);
figure;
g = histfit(y);

g=y;
   
end


function u = uniform(N)

y = rand(1,N);
figure;
u = histogram (y);
q = y;
   
end
