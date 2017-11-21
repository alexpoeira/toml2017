if(Playa.timestop){
	image_speed = 0;
	exit;
}else
	image_speed = 1;

if(hp == 0) instance_destroy();

if(place_meeting(x+hsp,y,oWall)){
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
		hsp = -hsp;

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

if(playaStunned){
	playaStunnedTime += delta_time;
	if(playaStunnedTime > 100000){
		Playa.image_blend = -1;
		playaStunnedTime = 0;
		playaStunned = false;
	}
}

if(hsp!= 0) image_xscale = sign(hsp)
/*if(image_blend != c_red){
	if(walked >= limit){
		movespeed = -movespeed;
		walked = 0;
	}
	x += movespeed;
	walked += abs(movespeed);
}

else{
	timeStunned+=delta_time;
	if(timeStunned > 100000){
		image_blend = -1;
		timeStunned = 0;
	}
}*/
