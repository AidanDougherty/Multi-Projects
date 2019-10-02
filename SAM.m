g = 9.8;
M = 28;
m=1;
thetai = pi/2;
mint=0;

% a=(dr, dtheta, dmomentum r, dmomentum theta)
% init = (r, velocity r, theta, velocity theta)
 f = @(t,a) [a(2)/(M+m);a(4).^2/(m*a(1).^3)-M*g+m*g*cos(a(3));a(4)/(m*a(1).^2);-m*g*a(1)*sin(a(3))];
[t,a] = ode45(f,[0 30],[1 0 thetai 0]); 
%   traj = polar(a(:,3)-pi/2, a(:,1), '-b');
%     plotPoints2([1 0 thetai 0], f, 15);
     
      plotPoints3([1 0 thetai 0],[1 0 1.01*thetai 0], [1 0 0.99*thetai 0], f, 15);
%   massIter(2, 30, 30, [1 0 thetai 0]);

function plotPoints2(init, func, trailLength)
     h = figure;
%     axis tight manual
%      filename = 'SAMsingle.gif';
     [t5,a] = ode45(func,[0 trailLength],init);
    an = animatedline('Color', 'b');
    axis([-1.7 1.7 -1.7 1.7]);
    for n = 1:length(t5)
%      polar(a(:,3)-pi/2, a(:,1), '.b');
%      plot(a(n,1)*cos(a(n,3)-pi/2), a(n,1)*sin(a(n,3)-pi/2), 'b-o');
     addpoints(an, a(n,1)*cos(a(n,3)-pi/2), a(n,1)*sin(a(n,3)-pi/2));
     drawnow;
%      frame = getframe(h); 
%     im = frame2im(frame); 
%     [imind,cm] = rgb2ind(im,256);
%     if n==1
%           imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
%       else 
%           imwrite(imind,cm,filename,'gif','WriteMode','append'); 
%     end 
      pause(0.03);
%      if n==1
%      hold on
%      end
    end

%     hold off
end

function plotPoints3(init1,init2, init3, func, trailLength)
    h = figure;
%      axis tight manual
%      filename = 'SAMmulti.gif';
     [t5,a1] = ode45(func,[0 trailLength],init1);
     [t6,a2] = ode45(func,[0 trailLength],init2);
     [t7,a3] = ode45(func,[0 trailLength],init3);
    an1 = animatedline('Color', 'b');
    an2 = animatedline('Color', 'g');
    an3 = animatedline('Color', 'r');
    axis([-2.2 2.2 -2.2 2.2]);
     mintime = min([length(t5) length(t6) length(t7)]);
    
    for n = 1:mintime
%      polar(a(:,3)-pi/2, a(:,1), '.b');
%      plot(a(n,1)*cos(a(n,3)-pi/2), a(n,1)*sin(a(n,3)-pi/2), 'b-o');
     addpoints(an1, a1(n,1)*cos(a1(n,3)-pi/2), a1(n,1)*sin(a1(n,3)-pi/2));
     addpoints(an2, a2(n,1)*cos(a2(n,3)-pi/2), a2(n,1)*sin(a2(n,3)-pi/2));
     addpoints(an3, a3(n,1)*cos(a3(n,3)-pi/2), a3(n,1)*sin(a3(n,3)-pi/2));
     drawnow update
%       frame = getframe(h); 
%     im = frame2im(frame); 
%     [imind,cm] = rgb2ind(im,256);
%     if n==1
%           imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
%       else 
%           imwrite(imind,cm,filename,'gif','WriteMode','append'); 
%     end 
      pause(0.03);
     
    end


end


function massIter(initM, endM, trailLength, initc)
m=1;
g=9.8;

h = figure;
axis tight manual
filename = 'SAMiter.gif';
for Mi=initM:0.1:endM
     f = @(t,a) [a(2)/(Mi+m);a(4).^2/(m*a(1).^3)-Mi*g+m*g*cos(a(3));a(4)/(m*a(1).^2);-m*g*a(1)*sin(a(3))];
    [t1,a1] = ode45(f,[0 trailLength],initc); 
    plot(a1(:,1).*cos(a1(:,3)-pi/2), a1(:,1).*sin(a1(:,3)-pi/2),'b');
    title(Mi);
    axis([-1.7 1.7 -1.7 1.7]);
    drawnow;
    frame = getframe(h); 
    im = frame2im(frame); 
    [imind,cm] = rgb2ind(im,256);
    if Mi==initM
          imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
      else 
          imwrite(imind,cm,filename,'gif','WriteMode','append'); 
    end 
    
    pause(0.01);
    if Mi==initM
    hold on
    end
    clf;
end
hold off
end