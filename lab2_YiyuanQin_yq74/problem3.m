X = @(x)0.95+(x-1)/100;
Y = @(y)1.95+(y-1)/100;
W = @(x,y)x.^2 + 5* y.^2;
Z = @(x,y)-5*x.^2 + y.^2;
for i = 1:11
    x(i) = X(i);
    for j = 1:11
        subplot(1,2,1)
        hold on 
        y(j) = Y(j);
        scatter(x(i),y(j));
        subplot(1,2,2)
        w = W(x(i),y(j));
        z = Z(x(i),y(j));
        scatter(w,z);
        hold on;
    end
end
subplot(1,2,1)
a = [X(1) X(1) X(11) X(11) X(1)];
b = [Y(1) Y(11) Y(11) Y(1) Y(1)];
plot(a,b);
c = [W(X(1),Y(1)),W(X(1),Y(11)),W(X(11),Y(11)),W(X(11),Y(1)),W(X(1),Y(1))];
d = [Z(X(1),Y(1)),Z(X(1),Y(11)),Z(X(11),Y(11)),Z(X(11),Y(1)),Z(X(1),Y(1))];
subplot(1,2,2)
plot(c,d)
s1 = polyarea(a,b);
s2 = polyarea(c,d);
ratio = s2/s1




