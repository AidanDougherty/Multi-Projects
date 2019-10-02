c = -1+2*rand(6,1);
% Spiral use set 1 ZOOM, 100, 200
% c(1) = 0.9230;
% c(2) = -0.0048;
% c(3) = -0.1445;
% c(4) = 0.1356;
% c(5) = 0.2261;
% c(6) = 0.6140;

% Nest set 1, 100, 100
% c(1) =0.9037;
% c(2) = -0.4596;
% c(3) = 0.7873;
% c(4) = 0.7904;
% c(5) = 0.5511;
% c(6) = 0.8176;


%Loop set 2 500, 100
% c(1)=0.5347;
% c(2)=0.9943;
% c(3)=-0.5447;
% c(4)=0.8391;
% c(5)=0.2840;
% c(6)=-0.7894;

lines = 100;
points =100;

xt = zeros(lines, points);
yt = zeros(lines, points);
zt = zeros(lines, points);

min = -3;
range = 2*abs(min);

for iter = 1:1:lines
    z = min+range*rand();
    y = min+range*rand();
    x = min+range*rand();
    if iter ==1
        z = 0; x = 0; y = 0;
    end
for i = 1:1:points
% Set 1
% newx=z*sin(c(1)*x)+cos(c(2)*y);
% newy=x*sin(c(3)*y)+cos(c(4)*z);
% newz=y*sin(c(5)*z)+cos(c(6)*x);

% Set 2
% newx=x*sin(c(1)*x)+cos(c(2)*y);
% newy=y*sin(c(3)*y)+cos(c(4)*z);
% newz=z*sin(c(5)*z)+cos(c(6)*x);

% TRANGLES
% newx = z+(c(1))*sin(y*c(2));
% newy = x+(c(3))*cos(z*c(4));
% newz = y+(c(5))*sin(x*c(5));

% newx = c(1)*sin(y);
% newy = -c(4)*sin(z);
% newz = c(5)*sin(x);

xt(iter, i) = newx;
yt(iter, i) = newy;
zt(iter, i) = newz;


x = newx; y = newy; z = newz;
% plot3(x, y, z, 'b.');
% if i==1
%     hold on
% end

end
plot3(xt(iter, :), yt(iter, :), zt(iter, :));
hold on
end
hold off