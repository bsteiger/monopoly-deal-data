data = importMonopolyDealData;

% calculate the data we want to analize
numberOfGamesPlayed = length(data.Winner);
% Percent win per person
wins.B = 0;
wins.T = 0;
for i = 1:numberOfGamesPlayed
    if data.Winner(i) == "B"
        wins.B = wins.B+1;
    elseif data.Winner(i) == "T"
        wins.T = wins.T+1;
    end
end
fprintf("\n\nWin Percentage: \n");
fprintf("Tiffany:\t%0.1f%%\n",(wins.T/numberOfGamesPlayed*100));
fprintf("Brandon:\t%0.1f%%\n",(wins.B/numberOfGamesPlayed*100));

% percent win going first
winCount = 0;
goFirstWin.T = 0;
goFirstWin.B = 0;
for i = 1:numberOfGamesPlayed
    if data.Winner(i) == data.WentFirst(i)
        winCount = winCount+1;
        if data.Winner(i) == "T"
            goFirstWin.T = goFirstWin.T + 1;
        elseif data.Winner(i) == "B"
            goFirstWin.B = goFirstWin.B + 1;
        end
    end
end
fprintf("\nPercent of wins going first:\t%0.1f%%\n",winCount/numberOfGamesPlayed*100);

% win rate of going first per pers
goFirstWinRate.B = goFirstWin.B/wins.B*100;
goFirstWinRate.T = goFirstWin.T/wins.T*100;
fprintf("\nWin Rate of Going First Per Person:\n")
fprintf("Tiffany:\t%0.1f%%\n",goFirstWinRate.T)
fprintf("Brandon:\t%0.1f%%\n",goFirstWinRate.B)