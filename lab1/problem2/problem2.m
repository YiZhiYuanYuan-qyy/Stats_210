function [pn] = problem2(n)
p = [];
for i = 1:200
    dis = 0;
    for N = 1: 10000
        birth = randi(365,1,i); % the birthday of i people
        same = 0;
        % judge whether there are 2 people have the same birth
        for k = 1:i
            for j = k+1:i
                if birth(k)==birth(j)
                    same = same+1;
                end
            end
        end
        % if no
        if same == 0
            dis = dis+1;
        end
        p(i) = dis/10000;
        if i == n
            pn = p(i);
        end
    end
end
x = 1:200;
y = p;
plot(x,y,'.-')
hold on
plot(n,pn,'*','LineWidth',2)
xlabel('n')
ylabel('P(n)')