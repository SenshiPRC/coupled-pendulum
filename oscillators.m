%By Pol Riubrogent Comas <Version 1.0>
%Constants
k=10; kc=0.5; 
m=1; 

clf(figure(1));
clf(figure(2));
figure(1);
xlabel('t')
ylabel('x_1,x_2')
%Initial state
x01=pi/2; 
x001=0;
t=0:0.1:100;
%Equations of motion
wa=sqrt(k/m);
wb=sqrt((k+2*kc)/m);
x1=x01*cos((wa-wb)*t/2).*cos((wa+wb)*t/2);
x2=x01*sin((wa-wb)*t/2).*sin((wa+wb)*t/2);
h1=animatedline('Color','b');
h2=animatedline('Color','r');
set(gca, 'XLim',[0 100], 'YLim', [-2 2]);
grid on
i=1;
for a=t
    %Graph the position of every oscillator
    figure(1);
    x1=x01*cos((wa-wb)*t/2).*cos((wa+wb)*t/2);
    x2=x01*sin((wa-wb)*t/2).*sin((wa+wb)*t/2);
    addpoints(h1, t(i), x1(i));
    addpoints(h2, t(i), x2(i));
    drawnow
    i = i+1;
    %Animation
    figure(2);
    x1=x01*cos((wa-wb)*a/2).*cos((wa+wb)*a/2);
    x2=5+x01*sin((wa-wb)*a/2).*sin((wa+wb)*a/2);
    plot([-4 9], [0 0], 'Color', 'k', 'LineWidth',2)
    hold on
    p1 = plot(x1, 0, 'ro', 'markerfacecolor', 'b', 'markersize', 20, 'markeredgecolor', 'b');
    axis([-4 9 -10 10]);
    p2 = plot(x2, 0, 'ro', 'markerfacecolor', 'r', 'markersize', 20, 'markeredgecolor', 'r');
    hold off
    drawnow()

end

