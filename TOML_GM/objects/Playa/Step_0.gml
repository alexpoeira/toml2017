key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_space = keyboard_check(vk_space);
key_shift = keyboard_check(vk_lshift);

//Horizontal Movement
var move = key_right - key_left;

if(!key_shift)
	hsp = move * movespeed;
else
	hsp = move * shiftspeed;

vsp = vsp + grv;
if(place_meeting(x,y+1,oWall) || place_meeting(x,y+1,Box)){
	doubleJump = true;
	if(key_space || key_up){
		vsp = jumpforce;
		iJumped = true;
	}
}

timeSinceAttack += delta_time;
//Horizontal Collisions
if(place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
		hsp = 0;

}

else if(place_meeting(x+hsp,y,Box)){
	if(place_meeting(x,y+1,oWall) && spriteIndex == playaAdult)
		Box.x += hsp;
	hsp = 0;
}

x = x + hsp;

//Vertical Collisions
if(place_meeting(x,y+vsp,oWall) || place_meeting(x,y+vsp,Box)){
	while(!place_meeting(x,y+sign(vsp),oWall) && !place_meeting(x,y+sign(vsp),Box))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation and Transformation to different characters

if(!place_meeting(x,y+1,oWall) && !place_meeting(x,y+1,Box)){
	if(spriteIndex == playaChild){
		sprite_index = childFall;
		image_speed = 1;
		if(sign(vsp) >0)
			image_index = 0;
		else
			image_index = 1;
	}
	mask_index = spriteIndex;
}
else{
	image_speed = 1;
	sprite_index = spriteIndex;
	mask_index = spriteIndex;
}

if(hsp!= 0) image_xscale = sign(hsp)

//special cases
if(spriteIndex == babyCrawl && crawlingUnder == true){
	if(!place_meeting(x,y-10,oWall)){
		spriteIndex = playaBaby;
		movespeed = 4;
		vsp -=2;
		jumpforce = -10;
		crawlingUnder = false;
	}
}

if(place_meeting(x,y+1,oWall) && spriteIndex == oldClimb)
	spriteIndex = playaOld;

if(timeSinceAttack > 1000000 && spriteIndex == playaAttack)
	spriteIndex = playaAdult;