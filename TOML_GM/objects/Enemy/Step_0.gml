/// @description Insert description here
// You can write your code in this editor

if(hp == 0) instance_destroy();

if(image_blend != c_red){
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
}

if(playaStunned){
	playaStunnedTime += delta_time;
	if(playaStunnedTime > 100000){
		Playa.image_blend = -1;
		playaStunnedTime = 0;
		playaStunned = false;
	}
}
