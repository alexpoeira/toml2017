key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_space = keyboard_check(vk_space);
key_shift = keyboard_check(vk_lshift);

//Horizontal Movement
var move = key_right - key_left;

if(!key_shift)
	hsp = move * movespeed;
else
	hsp = move * shiftspeed;

vsp = vsp + grv;
if(place_meeting(x,y+1,oWall)){
	if(key_space)
		vsp = jumpforce;
}


//Horizontal Collisions
if(place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
		hsp = 0;

}
x = x + hsp;

//Vertical Collisions
if(place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;

}


y = y + vsp;

//Animation and Transformation to different characters

if(!place_meeting(x,y+1,oWall)){
	sprite_index = childFall;
	image_speed = 0;
	if(sign(vsp) >0)
		image_index = 0;
	else
		image_index = 1;
		
}
else{
	image_speed = 1;
	sprite_index = spriteIndex;
}	
if(hsp!= 0) image_xscale = sign(hsp);