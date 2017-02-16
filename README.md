# Predicting_Tennis_Games_using_Elos_Rating


According to a recent study (Pempus, 2015), sports betting is currently a $1.3 Trillion industry globally. In 2014, almost $4 billion was spent on sports betting in Nevada alone and these figures continue to rise. Generally, most seasoned gamblers rely on their deep domain knowledge to place bets. On the other hand, most low-risk gamblers and bettors with limited domain knowledge generally depend on the betting odds of one or a few bookmakers. Nonetheless, betting losses continue to increase in both cases. It is estimated that American gamblers recorded the highest gambling loss ($119 billion) worldwide in 2013 (Aziz, 2014). For these gamblers, if historical data and previous patterns were available as a guide, this could potentially improve their decision-making as well as their betting odds.
In this project, we will attempt to build a model for predicting the outcome of sports competitions but the specific case of Tennis betting will be used as an illustration. A dataset containing the tournament statistics of all major Tennis competitions from 2010 to 2016 was compiled using information obtained from http://www.tennis-data.co.uk/alldata.php. The original data set for each year had forty (40) features which included the following:

DESCRIPTION OF FEATURES

ATP = Tournament number 

Location = Venue of tournament

Tournament = Name of tounament (including sponsor if relevant)

Data = Date of match 

Series = Name of ATP tennis series (Grand Slam, Masters, International or International Gold)

Court = Type of court (outdoors or indoors)

Surface = Type of surface (clay, hard, carpet or grass)

Round = Round of match

Best of = Maximum number of sets playable in match

Winner = Match winner

Loser = Match loser

WRank = ATP Entry ranking of the match winner as of the start of the tournament

LRank = ATP Entry ranking of the match loser as of the start of the tournament

WPts = ATP Entry points of the match winner as of the start of the tournament

LPts = ATP Entry points of the match loser as of the start of the tournament

W1 = Number of games won in 1st set by match winner

L1 = Number of games won in 1st set by match loser

W2 = Number of games won in 2nd set by match winner

L2 = Number of games won in 2nd set by match loser

W3 = Number of games won in 3rd set by match winner

L3 = Number of games won in 3rd set by match loser

W4 = Number of games won in 4th set by match winner

L4 = Number of games won in 4th set by match loser

W5 = Number of games won in 5th set by match winner

L5 = Number of games won in 5th set by match loser

Wsets = Number of sets won by match winner

Lsets = Number of sets won by match loser

Comment = Comment on the match (Completed, won through retirement of loser, or via Walkover)

B365W = Bet365 odds of match winner

B365L = Bet365 odds of match loser

B&WW = Bet&Win odds of match winner

B&WL = Bet&Win odds of match loser

EXW = Expekt odds of match winner

EXL = Expekt odds of match loser

LBW = Ladbrokes odds of match winner

LBL = Ladbrokes odds of match loser

PSW = Pinnacles Sports odds of match winner

PSL = Pinnacles Sports odds of match loser

MaxW = The highest odd of match winner

MaxL = The highest odd of match loser

AvgW = The average odd of match winner

AvgL = The average odd of match loser
