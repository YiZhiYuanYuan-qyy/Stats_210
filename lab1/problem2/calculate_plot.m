nMax     = 200; %maximum number of people in classroom
nArray   = 1:nMax;
prevPnot = 1; %initialize probability
for iN = 1:nMax
    Pnot = prevPnot*(365-iN+1)/365; %probability that no birthdays are the same
    P(iN) = Pnot; %probability that at least two birthdays are the same
    prevPnot = Pnot;
end
plot(nArray, P, '.-')
xlabel('n')
ylabel('P(n)')
grid on
