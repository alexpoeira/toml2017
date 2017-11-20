/// @description Insert description here
// You can write your code in this editor

if(Playa.x > x){
	if(!place_meeting(Playa.x+25,Playa.y-10,oWall))
		Playa.x += 25;
	else{
		walked = 0;
		movespeed = -movespeed;
	}
}

else if(!place_meeting(Playa.x-25,Playa.y-10,oWall))
	Playa.x -= 25;

else{
	walked = 0;
	movespeed = -movespeed;
}

Playa.image_blend = c_red;
playaStunned = true;
