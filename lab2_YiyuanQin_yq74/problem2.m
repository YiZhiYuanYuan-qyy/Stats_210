N = 10000;
X = [];
Y = [];
k = 100;
for i = 1:N
    A = randi([0 1], k, 1);
    X(i)=find(A==1,1,'first');
end
for i = 1:N
    A = randi([0 1], k, 1);
    Y(i)=find(A==1,1,'first');
end
Z = X + Y;
p=[];
for i =2:k
    p(i) = sum(Z==i)/N;
end
x = 2:100;
y = p(2:k);
scatter(x,y,'filled','y');
hold on
k = 2:100;
pz = 0.25.*(k-1).*0.5.^(k-2);
scatter(k,pz,'^')
xlabel('k');
ylabel('p(k)');
legend(' Simulation Z',' Formula');
err = mean(abs(y-pz))