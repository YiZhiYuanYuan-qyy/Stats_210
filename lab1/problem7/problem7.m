function[a1,a2,a3] = problem7(mu,sigma)% a=1,2,3
an=[];
%generate a group of number fit normal distribution
% r = mu+sigma*randn(1,100000);
r = normrnd(mu,sigma,100000,1);
% histogram(r,'Normalization','pdf')
hold on
histfit(r);
xlabel('value')  %x
ylabel('number of value') %y
for a = 1:3
    v = mu+a*sigma;
    all = sum(r>v);
    an(a) = all/100000;
    line([v v],[0 1200]);
end
a1 = an(1);
a2 = an(2);
a3 = an(3);