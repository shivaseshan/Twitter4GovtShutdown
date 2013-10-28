function getDataset(S_Mat)
    for i = 1:100
        % Getting Tweets
         global Data;
         Data = [Data; cellstr(S_Mat.statuses{1,i}.text)];

        % Getting Tweet ID's
         global ID;
        ID = [ID; cellstr(S_Mat.statuses{1,i}.id_str)];

        % Getting the tweet creation date
         global Date;
        Date = [Date; cellstr(S_Mat.statuses{1, i}.created_at)];

        % Getting Retweet Count
         global Retweet;
        Retweet = [Retweet; S_Mat.statuses{1, i}.retweet_count];

        % Getting Favorite Count
         global Favorite;
        Favorite = [Favorite; S_Mat.statuses{1, i}.favorite_count];

        % Getting Retweeted
         global Retweeted;
        Retweeted = [Retweeted; S_Mat.statuses{1, i}.retweeted];

        % Getting Favorited
         global Favorited;
        Favorited = [Favorited; S_Mat.statuses{1, i}.favorited];

        % Getting Result Type 
         global ResultType;
        ResultType = [ResultType; cellstr(S_Mat.statuses{1, i}.metadata.result_type)];

        % Getting Source of Tweet
         global Source;
        Source = [Source; cellstr(S_Mat.statuses{1, i}.source)];

        % Getting user id of the person who tweeted
         global UserID;
        UserID = [UserID; cellstr(S_Mat.statuses{1, i}.user.id_str)];

        % Getting user name of the person who tweeted
         global UserName;
        UserName = [UserName; cellstr(S_Mat.statuses{1, i}.user.name)];

        % Getting verified status
         global Verified;
        Verified = [Verified; S_Mat.statuses{1, i}.user.verified];

        % Getting Location of the user
         global Location;
        if isempty(S_Mat.statuses{1, i}.user.location)
            Location = [Location; 'null'];
        else
            Location = [Location; cellstr(S_Mat.statuses{1, i}.user.location)]; 
        end
     end
end
