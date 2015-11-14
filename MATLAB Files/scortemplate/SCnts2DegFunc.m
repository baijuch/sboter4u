function SCnts2DegFunc(~, SCnts2DegFuncMess)

global ScorCnts2DegRn ScorCnts2DegRmsg;
cts = SCnts2DegFuncMess.Data;
ScorCnts2DegR = ScorCnts2Deg(cts);
ScorCnts2DegRmsg.Data = ScorCnts2DegR;
send(ScorCnts2DegRn,ScorCnts2DegRmsg);

end