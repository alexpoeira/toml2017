if(Playa.timestop){
	image_speed = 0;
	exit;
}else
	image_speed = 1;

if(place_meeting(x,y,oWall)) instance_destroy();