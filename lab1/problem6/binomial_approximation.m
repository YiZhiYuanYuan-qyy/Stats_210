%binomial distribution PMF
x = 0:10;
y = binopdf(x,100,0.01);
xlim=get(gca,'Xlim'); 
hold on

%binomial_approximation of poisson distribution PMF
% lamda = np
x = 0:10;
y_ = binopdf(x,100000,0.00001);

plot(x,y,'-*b',x,y_,'-or');
legend('Binomial Distribution','Binomial Approximation of Poisson Distribution');   %右上角标注
xlabel('x')  %x轴坐标描述
ylabel('p(x)') %y轴坐标描述
