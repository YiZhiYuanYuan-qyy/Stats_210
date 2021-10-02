norm_ = [];
unif_ = [];
varnorm = [];
varunif = [];
for i = 1:500
    mui_norm = 0;
    mui_unif = 0;
    for n = 1:i
        norm=normrnd(1,4,1,200);
        mui_norm = mui_norm + mean(norm);

        unif = 2*rand(1,100);
        mui_unif = mui_unif + mean(unif);
    end
    norm_(n) = mui_norm/i;
    unif_(n) = mui_unif/i;
    
end
for i = 1:500
    varnorm(i) = var(norm_(1:i));
    varunif(i) = var(unif_(1:i));
end

N = 1:500;

subplot(1,2,1)
plot(N,norm_)
hold on
plot(N,unif_,'r')
xlabel('N')
ylabel('Sample Mean')
legend('Norm distribution','Uniform distribution')

subplot(1,2,2)
scatter(N,varnorm);
hold on 
scatter(N,varunif);
xlabel('N')
ylabel('Variance')
legend('Norm distribution','Uniform distribution')