function SCapturePoseFunc(~, SCapturePoseFuncMess)

global ScorCapturePoseR1n ScorCapturePoseR1msg ScorCapturePoseR2n ScorCapturePoseR2msg;
CPPt = SCapturePoseFuncMess.Data;
[ScorCapturePoseR1,ScorCapturePoseR2] = ScorCapturePose(CPPt);
ScorCapturePoseR1msg.Data = ScorCapturePoseR1;
ScorCapturePoseR2msg.Data = ScorCapturePoseR2;
send(ScorCapturePoseR1n,ScorCapturePoseR1msg);
send(ScorCapturePoseR2n,ScorCapturePoseR2msg);

end