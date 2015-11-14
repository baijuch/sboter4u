function SSetSpeedFunc(~, SSetSpeedFuncMess)

global ScorSetSpeedRn ScorSetSpeedRmsg;
PercentSpeed = SSetSpeedFuncMess.Data;
ScorSetSpeedR = ScorSetSpeed(PercentSpeed);
ScorSetSpeedRmsg.Data = ScorSetSpeedR;
send(ScorSetSpeedRn,ScorSetSpeedRmsg);

end