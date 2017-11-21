/// @description Abilities
if(spriteIndex==playaBaby && place_meeting(x,y+1,oWall)){
	spriteIndex = babyCrawl;
	movespeed = 1.5;
	jumpforce = 0;
}
if(spriteIndex==playaOld && (place_meeting(x+2,y,oWall) || place_meeting(x-2,y,oWall))){
	spriteIndex = oldClimb;
}