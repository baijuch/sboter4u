function SSetMovetimeFunc(~, SSetMovetimeFuncMess)

global ScorSetMovetimeRn ScorSetMovetimeRmsg;
tsec = SSetMovetimeFuncMess.Data;
ScorSetMovetimeR = ScorSetMovetime(tsec);
ScorSetMovetimeRmsg.Data = ScorSetMovetimeR;
send(ScorSetMovetimeRn,ScorSetMovetimeRmsg);

end