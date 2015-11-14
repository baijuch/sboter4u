function SSetGripperFunc(~, SSetGripperFuncMess)

global ScorSetGripperRn ScorSetGripperRmsg;
cm = SSetGripperFuncMess.Data;
ScorSetGripperR = ScorSetGripper(cm);
ScorSetGripperRmsg.Data = ScorSetGripperR;
send(ScorSetGripperRn,ScorSetGripperRmsg);

end