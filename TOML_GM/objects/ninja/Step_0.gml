vsp = vsp + grv;
if(place_meeting(x,y+1,oWall)){
	if(Playa.iJumped){
		vsp = jumpforce;
		Playa.iJumped = false;
	}
}
if(place_meeting(x,y+vsp,oWall)){
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if(!place_meeting(x,y+1,oWall)){
	sprite_index = ninjaFall;
	mask_index = ninja_idle;
}else{
	sprite_index = ninja_idle;
}
y = y + vsp;
if(x>Playa.x)
	image_xscale = -1;
else
	image_xscale = 1;

//shooting
firingdelay = firingdelay - start;

if(firingdelay < 0){
	firingdelay = 100;
	with(instance_create_layer(x,y,"bulletLayer",bullet)){
		speed = 5;
		direction = point_direction(x,y,Playa.x,y);
		image_angle = direction;
	}
	with(instance_create_layer(x,y+10,"bulletLayer",bullet)){
		speed = 5;
		direction = point_direction(x,y,Playa.x,y);
		image_angle = direction;
	}
	with(instance_create_layer(x,y-10,"bulletLayer",bullet)){
		speed = 5;
		direction = point_direction(x,y,Playa.x,y);
		image_angle = direction;
	}

}



if(hp == 0) instance_destroy();

if(playaStunned){
	playaStunnedTime += delta_time;
	if(playaStunnedTime > 100000){
		Playa.image_blend = -1;
		playaStunnedTime = 0;
		playaStunned = false;
	}
}