/// @description Baby Stop Crawl
if(spriteIndex == babyCrawl){
	if(!place_meeting(x,y-sprite_height,oWall)){
		spriteIndex = playaBaby;
		movespeed = 4;
		vsp -=3;
	}
	crawlingUnder = true;
}

if(spriteIndex == oldClimb)
	spriteIndex = playaOld;
	