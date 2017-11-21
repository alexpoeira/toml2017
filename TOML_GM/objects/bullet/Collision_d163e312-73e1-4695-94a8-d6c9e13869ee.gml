/// @description
if(Playa.x > x){
	if(!place_meeting(Playa.x+25,Playa.y-10,oWall))
		Playa.x += 25;
}
else if(!place_meeting(Playa.x-25,Playa.y-10,oWall))
	Playa.x -= 25;
Playa.image_blend = c_red;
Playa.image_blend = -1;
instance_destroy();