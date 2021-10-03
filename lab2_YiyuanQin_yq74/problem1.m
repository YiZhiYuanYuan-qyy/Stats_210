N = 10000000;
tag = rand(N,2);
data = tag;
for i = 1:N
    if tag(i,1)<=1/8
        data(i,:)=[0 0];
    elseif (1/8<tag(i,1))&&(tag(i,1)<=2/8)
        data(i,:) = [1 0];
    elseif (2/8<tag(i,1))&&(tag(i,1)<=4/8)
        data(i,:) = [0 1];
    else
        data(i,:) = [1 1];
    end
end
x = data(:,1);
y = data(:,2);
x_ = mean(x);
y_ = mean(y);
pro = mean(x.*y);
sqr_x = mean(x.^2);
sqr_y = mean(y.^2);
cor = (pro-x_.*y_)/sqrt((sqr_x-x_.^2).*(sqr_y-y_.^2));
disp(cor)




