
%Lab 2 Digital Signal Processing

function Lab2() 

         fs = 20 ; 
         f = 1;   
         t = [0:1/fs:10]; 
         y = sin(2*pi*f*t);
         figure(1)
         plot(t,y);
         title('Sin Function')   
                 
         
         t1 = [0:1/fs:20];
         y1 = sin(2*pi*(f/fs)*t1);
         figure(2)
         plot(t1,y1);
         title('Sin Function')   
         
        %casuality

        x = step(4,20);
         for k= 1:19
            y(k) = x(k)/2+ (x(k+1))/2;
         end
        figure(3)
        stem(y)
  
        
        for k= 2:20
            y(k) = x(k)/2+ (x(k-1))/2;
        end
        figure(4)
        stem(y)
         
        %Stability  Part 1
        y2 = x; 
        for i = 2:1:20
            y2(i) = y2(i-1)+x(i);
        end
        figure(5)
        stem(y2)
                
        
        %%%Part 2
         d = Dirac(4,20);
         y3 = d;
         for i = 2:1:20
            y3(i) = y3(i-1)+d(i);
        end
        figure(6)
        stem(y3)
         
         
       
         d = Dirac(4,20);
         y4 = d;
         for i = 2:1:20
            y4(i) = d(i)+ 2*(y4(i-1));
        end
        figure(7)
        stem(y4)
                 
        
         d = Dirac(4,20);
         y5 = d;
         for i = 2:1:20
            y5(i) = d(i)+ (y5(i-1)/3);
        end
        figure(8)
        stem(y5)
        
        %%impulse
                
        
        xa=[0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0];
        xb=[0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0];
        ya(1)=0;
        yb(1)=0;


        for i=2:1:19-1
             ya(i)=3*xa(i-1)-2*xa(i)+xa(i+1);
        end
             figure(9);
        stem(ya);

        for i=2:1:19-1
            yb(i)=3*xb(i-1)-2*xb(i)+xb(i+1);
        end
       figure(10)
        stem(yb);

        h=[1,-2,3];
        x=xa+xb;
        y1=conv(x,h);
        figure(11)
        stem(y1);

        y2=conv(xa,h)+conv(xb,h);
        figure(12)
        figure(13)
        stem(y1);
        stem(y2);

                    
              
         
end




   
  
 