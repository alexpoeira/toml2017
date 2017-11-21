/// @description Baby Stop Crawl
if(spriteIndex == babyCrawl){
	if(!place_meeting(x,y-sprite_height,oWall)){
		spriteIndex = playaBaby;
		movespeed = 4;
		mask_index = babyCrawl;
		vsp -=2;
		jumpforce = -10;
	}
	crawlingUnder = true;
}