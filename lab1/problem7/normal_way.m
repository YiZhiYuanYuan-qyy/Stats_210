function[a1,a2,a3] = normal_way(mu,sigma)
p=[];
for a=1:3
    N=1000000;
    X=(mu-a*sigma)+2*a*sigma*rand(1,N);
    Y=0+(1/(sigma*sqrt(2*pi)))*rand(1,N);
    y=zeros(1,N);

    n=0;

    for i=1:N
        y(i)=(1/(sqrt(2*pi*sigma^2)))*exp(((-(X(i)-mu)^2)/(2*sigma^2)));
        if Y(i)<=y(i)
            n=n+1;
        end
    end
    lengthx = 2*a*sigma;
    lengthy = 1/(sigma*sqrt(2*pi));
    t=(n/N)*lengthy*lengthx;
    p(a) = (1-t)/2;
end
a1 = p(1);
a2 = p(2);
a3 = p(3);