/// @description Form abilities
if(spriteIndex==playaBaby){
	spriteIndex = babyCrawl;
	movespeed = 1.5;
}
if(spriteIndex==playaOld && (place_meeting(x+1,y,oWall) || place_meeting(x-1,y,oWall))){
	spriteIndex = oldClimb;
}