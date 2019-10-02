x = 0.5;
xt = zeros(100,1);
nt = 0.5:0.5:50;
% h = figure;

% axis tight manual
% filename = 'LogMap.gif';
lyvals = zeros(281,1);
rt = 2.6:0.005:4;
% 2.6 to 4 by 0.005 for gif
ind = 1;
for r = 2.6:0.005:4
    
    for n = 0.5:0.5:50
        newx = r*x*(1-x);
        x= newx;
        xt(n*2,1) = x;
    end
%     ly = 0;
%     for n = 1:1:10000
%         
%         newx = r*x*(1-x);
%         x= newx;
%         ly = ly + log2(abs(r-2*r*x));
%     end
%     ly = ly/10000;
%     lyvals(ind,1) = ly;
%     ind=ind+1;
    g = plot(nt, xt);
    axis([0 50 0 1]);
    title(r);
    xlabel('n (years)');
    ylabel('x (pop size)');
    drawnow;
    
%     frame = getframe(h); 
%     im = frame2im(frame); 
%     [imind,cm] = rgb2ind(im,256);
%     if r == 2.6 
%           imwrite(imind,cm,filename,'gif', 'Loopcount',inf); 
%       else 
%           imwrite(imind,cm,filename,'gif','WriteMode','append'); 
%     end 
      
      pause(0.05);
    
end

plot(rt, lyvals);
yline(0);
xlabel('r');
ylabel('lyapunov exp');