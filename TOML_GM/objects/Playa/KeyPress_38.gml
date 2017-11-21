/// @description Double Jump and Climb
if(spriteIndex == playaChild && doubleJump){
	vsp = jumpforce;
	doubleJump = false;
}
if(spriteIndex == oldClimb ){
	mask_index = playaBaby;
	vsp = vsp/2;
	if(place_meeting(x-1,y,oWall)){
		hsp += jumpforce;
	}
	else if(place_meeting(x+1,y,oWall)){
		hsp -= jumpforce;
	}
}