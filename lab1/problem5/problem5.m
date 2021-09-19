n = 0;
for i = 1:100000
    inter = rand(1,3);
    if(inter>=0.25)
        n = n + 1;
    end
end
p = n/100000;
disp(p)

