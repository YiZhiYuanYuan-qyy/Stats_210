x = rand(1,100000);
y = rand(1,100000);
line = 1./(x+1);
p = sum(y<line)/100000;
disp(p)
area = p;
abs_error = abs(area - log(2))/log(2);
disp(abs_error);