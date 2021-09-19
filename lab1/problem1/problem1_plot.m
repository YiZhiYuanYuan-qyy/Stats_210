pi_100 = problem1(100,0.5,1);
pi_1000 = problem1(1000,0.5,1);
pi_10000 = problem1(10000,0.5,1);
pi_100000 = problem1(100000,0.5,1);
x = [100,1000,10000,100000];  
x = log10(x);
y = [pi_100, pi_1000, pi_10000, pi_100000];
disp(y);
scatter(x,y);
xlim=get(gca,'Xlim'); 
hold on
plot(xlim,[pi,pi],'k-','LineWidth',0.5)
xlabel('log10 of the trial times') 
ylabel('Estimated \pi value') 


