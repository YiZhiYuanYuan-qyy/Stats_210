x_ = [];
x =[];
for n = 1:100000
    R=normrnd(1,1,1,100000);
    x(n) = mean(R);
end
for t = 1:100000
    x_(t) = sum(x(1:t))/t;
end
N = 1:100000;
subplot(1,2,1)
plot(N,x_)
ylabel('Mean Value');
xlabel('Count');
subplot(1,2,2)
histogram(x_);
grid on
title('Distribution of means');
xlabel('Mean Value');
ylabel('Count');
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);