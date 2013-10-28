% creating twitty object
twittyObject

% Giving global scope
global Data ID Date Retweet Favorite ResultType Retweeted Favorited Source UserID UserName Verified Location;

% Initiallizing the global data structures in cell format
Data = {'Tweet'};
ID = {'Tweet ID'};
Date = {'Creation Date'};
Retweet = {'Retweet Count'};
Favorite = {'Favorite Count'};
ResultType = {'Result Type'};
Retweeted = {'Retweeted'};
Favorited = {'Favorited'};
Source = {'Source'};
UserID = {'User ID'};
UserName = {'UserName'};
Verified = {'Verfied Status'};
Location = {'Location'};

% getting the first 100 tweets using search api
 S = tw.search('obama','result_type','recent', 'count','100', 'lang','en' );
 S_Mat = cell2mat(S);
 max_id = S_Mat.search_metadata.max_id_str;
 getDataset(S_Mat);

% getting the subsequent older tweets
 S = tw.search('obama', 'count','5', 'lang','en', 'count','100', 'max_id',max_id);
 S_Mat = cell2mat(S);
 getDataset(S_Mat);
 
 Data = [Data, ID, Date, Retweet, Favorite, Retweeted, Favorited, ResultType, Source, UserID, UserName, Verified, Location];
 
% Clearing Up
 clearvars -except tw max_id credentials Data