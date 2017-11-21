if(Playa.timestop){
	image_speed = 0;
	exit;
}else
	image_speed = 1;

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
	vsp = -vsp;
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