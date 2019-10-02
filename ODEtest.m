
sigma = 10;
rho = 28;
beta = 8/3;


stepOPTs = odeset('RelTol', 1e-3, 'AbsTol', 1e-3);


% Lorenz Attractor WORKS, only run init point
% f = @(t,a) [-sigma*a(1) + sigma*a(2); rho*a(1) - a(2) - a(1)*a(3); -beta*a(3) + a(1)*a(2)];
% [t,a] = ode45(f,[0 100],[1 1 1]); 
%  plot3(a(:,1),a(:,2),a(:,3));
% vp = [2 2 2];

% Spring WORKS, range 4, min = -2
% f = @(t,a) [cos(a(2));0.56+a(1)-a(3);0.13*(a(2)-a(3))];
% [t2,a] = ode45(f,[0 1000],[0 0 0]); 
% plot3(a(:,1),a(:,2),a(:,3));


% Aizawa range 4, min = -2 WORKS
% const = [0.95 0.7 0.6 3.5 0.25 0.1];
% f = @(t,a) [(a(3)-const(2))*a(1)-const(4)*a(2);const(4)*a(1)+(a(3)-const(2))*a(2);const(3)+const(1)*a(3)-(a(3)^3)/3-a(2)^2+const(6)*a(3)*a(1)^3];
% [t4,a] = ode45(f,[0 1000],[0.1 0 0]);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [1 1 1];


% Windmill
% f = @(t,a) [sin(cos(a(3))); sin(sin(cos(0.96)))/a(1); sin(a(2)-a(3))];
% [t4, a] = ode45(f, [0 10], [0 0 0]);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [0 40 0];

% 2D: De Jong
% const = [-2 -2 -1.2 2];
% f = @(t,a) [sin(const(1)*a(2))-cos(const(2)*a(1));sin(const(3)*a(1))-cos(const(4)*a(2))];
% [t4, a] = ode45(f, [0 100], [0 0]);
% plot(a(:,1),a(:,2));

% Pickover Attractor
% const = [2.24 0.43 -0.65 -2.43 1];
% f = @(t,a) [sin(const(1)*a(1))-a(3)*cos(const(2)*a(2)); a(3)*sin(const(3)*a(1))-cos(const(4)*a(2)); const(5)/sin(a(3))];
% [t4, a] = ode45(f, [0 100], [1.1 1 1], stepOPTs);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [0 0 5];

% Rossler range = 4, min = -2 WORKS
% const = [0.2 0.2 5.7];
% f = @(t,a) [-1*a(2)-a(3); a(1)+const(1)*a(2);const(2)+a(3)*(a(1)-const(3))];
% [t4, a] = ode45(f, [0 100], [1 0 0]);
% plot3(a(:,1), a(:,2), a(:,3));
% vp = [2, 2, 2];

%My Attractor
% const = -1.5+3*rand(10, 1);
% f = @(t,a) [a(3)*a(2)*const(1);-a(1)*const(2)+a(3)*const(3); a(2)/(a(1)+const(4))];
% [t4, a] = ode45(f, [0 10], [1 0 0]);
% plot3(a(:,1), a(:,2), a(:,3));
% vp = [2, 2, 2];

% Anishchenko Attractor
f = @(t,a) [1.2*a(1)+a(2)-a(1)*a(3);-1*a(2); -0.5*a(3)+0.5*a(1)*a(1)];
[t4, a] = ode45(f, [0 100], [0 0 0]);
 plot3(a(:,1),a(:,2),a(:,3));
vp = [0 1];
    
% The Chen-Lee Attractor
% f = @(t,a) [5*a(1)-a(2)*a(3);-10*a(2)+a(1)*a(3); -0.38*a(3)+a(1)*a(2)/3];
% [t4, a] = ode45(f, [0 100], [0 0 0]);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [0 0];

% Halvorsen Attractor, el = 5
% f = @(t,a) [-1.4*a(1)-4*(a(2)+a(3))-a(2)*a(2);-1.4*a(2)-4*(a(1)+a(3))-a(3)*a(3);-1.4*a(3)-4*(a(2)+a(1))-a(1)*a(1)];
% [t4, a] = ode45(f, [0 100], [0 0 0]);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [0, 5];

% Dequan Li Attractor
% f = @(t,a) [40*(a(2)-a(1))+0.16*a(1)*a(3); 55*a(1)+20*a(2)-a(1)*a(3);1.833*a(3)+a(1)*a(2)-0.65*a(1)*a(1)];
% [t4, a] = ode45(f, [0 50], [0 0 0]);
% plot3(a(:,1),a(:,2),a(:,3));
% vp = [0 30];

% Dadras Attractor
% f = @(t,a) [a(2)-3*a(1)+2.7*a(2)*a(3);1.7*a(2)-a(1)*a(3)+a(3);2*a(1)*a(2)-9*a(3)];
% [t4, a] = ode45(f, [0 100], [0 0 0]);
% vp = [0 0];

% Coullet Attractor
%  f = @(t,a) [a(2);a(3);8*a(1)-11*a(2)-4.5*a(3)-10*a(1)*a(1)*a(1)];
% vp = [0,0];
 
% The Hadley Attractor r = 1, min = -0.5
% f = @(t,a) [-a(2)*a(2)-a(3)*a(3)-0.2*a(1)+1.6;a(1)*a(2)-4*a(1)*a(3)-a(2)+1;4*a(1)*a(2)+a(1)*a(3)-a(3)];


hold on
range = 3;
minimum = -1.5;

x = zeros(20, 1000);
y = zeros(20, 1000);
z = zeros(20, 1000);
time = zeros(20, 1000);
testa1 = zeros(1, 1000);



 [az, el] =view(vp);
 view(az, el);
%   plotPoints(minimum, range, f, 30, 30);
    plotLines(minimum, range, f, 150, 35);
        spin(vp(2));
% plotPoints3(minimum, range, f, 20, 10);
%  plotPoints2([0.1 0 0], f, 30);

 hold off
 
 
function plotPoints(min, range, func, iter, trailLength)
for i=1:1:iter
      initc = min+range*rand(3,1);
%       initc = [rand() -4+8*rand() -2+6*rand()]; %Windmill

     [t5,a] = ode45(func,[0 trailLength],initc);
   
    for n = 1:length(t5)
     plot3(a(n,1),a(n,2),a(n,3), 'b.');
     
%      pause(0.0001);
     hold on
    end
end


end

function plotPoints2(init, func, trailLength)

      
%       initc = [rand() -4+8*rand() -2+6*rand()]; %Windmill

     [t5,a] = ode45(func,[0 trailLength],init);
   
    for n = 1:length(t5)
     plot3(a(n,1),a(n,2),a(n,3), 'b.');
     
     pause(0.001);
     hold on
    
    end


end

function plotPoints3(min, range, func, iter, trailLength)


for num=1:1:iter
      initcon = min+range*rand(3,1);
      [t6,a1] = ode45(func,[0 trailLength],initcon);
      
      time(num,1:length(t6)) = t6;
      
      x(num, 1:length(a1(:,1))) = a1(:,1);
      testa1(1, 1:length(a1(:,1))) = a1(:,1);
      
      y(num, 1:length(a1(:,2))) = a1(:,2);
      z(num, 1:length(a1(:,3))) = a1(:,3);
end


for col = 1:1:1000
    for row = 1:1:iter
         plot3(x(row, col), y(row, col), z(row,col));
         hold on
    end
    
end
hold off
end

function plotLines(min, range, func, iter, trailLength)
for i=1:1:iter
      initc = min+range*rand(3,1);
%       initc = [rand() -4+8*rand() -2+6*rand()]; %Windmill

     [t5,a] = ode45(func,[0 trailLength],initc);
       plot3(a(:,1),a(:,2),a(:,3)); 

      hold on
end


end

function spin(elev)

     axis tight manual
      filename = 'DequanLi.gif';
for i=0:10:360
    frame = getframe; 
    im = frame2im(frame); 
    [imind,cm] = rgb2ind(im,256);
    if i==0
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append'); 
    end 
    view([i,elev]);
    pause(0.001);
end

end