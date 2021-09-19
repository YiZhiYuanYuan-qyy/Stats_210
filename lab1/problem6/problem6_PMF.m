%binomial distribution PMF
x = 0:10;
y = binopdf(x,100,0.01);
xlim=get(gca,'Xlim'); 
hold on
%poisson distribution PMF
y_ = poisspdf(x,1);
plot(x,y,'-*b',x,y_,'-or');
legend('Binomial Distribution','Poisson Distribution');   %右上角标注
xlabel('x')  %x轴坐标描述
ylabel('p(x)') %y轴坐标描述

