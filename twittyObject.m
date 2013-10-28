%checking whether the credentials variable exists or not
if (not(exist('crendtials','var')))
    set_credentials
end

%creating the twitty object
tw = twitty(credentials);
