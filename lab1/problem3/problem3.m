% set king as 1, the other cards as 0
% the number of king is 3, the number of the other cards is 4
n = 0;
for i = 1:1000000
    %shuffle the cards
    card_0 = randi([0 0],48,1);
    card_1 = randi([1 1],4,1);
    card=[card_1;card_0];
    card = card(randperm(52));
    %grab the first 7 cards
    top = card(1:7);
    %if sum = 3, there are 3 kings
    king = sum(top);
    if king == 3
        n = n+1;
    end
end
% p = sum(p)/100;
p = n/1000000;
disp(p)
