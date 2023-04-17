%代码不要写太长，看着matlab的右侧线，一般是80字符以内%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f1=@(x)sin(x)+cos(x);
f2=@(x)cos(x)-sin(x);
xarr=-100:0.1:100;
y1arr=f1(xarr);
y2arr=f2(xarr);
plot(xarr,y1arr,"Color",'red',Marker='x')
hold on;
plot(xarr,y2arr,"Color",'blue',Marker='o')
legend('f1','f2')
set(gca, 'LineWidth',1.5,'Box', 'off');
saveas(gcf,'./img/eps','epsc')
%print('-depsc', 'figure.eps');
hold off