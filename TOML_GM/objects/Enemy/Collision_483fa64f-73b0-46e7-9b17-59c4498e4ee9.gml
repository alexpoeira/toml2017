/// @description Insert description here
// You can write your code in this editor
/*if(Playa.sprite_index != babyCrawl){
	if(Playa.x > x){
		if(!place_meeting(Playa.x+25,Playa.y-10,oWall))
			Playa.x += 25;
	/*	else{
			walked = 0;
		}*/
/*	}

	else if(!place_meeting(Playa.x-25,Playa.y-10,oWall))
		Playa.x -= 25;
*/
	/*else{
		walked = 0;
	}*/
/*
	Playa.image_blend = c_red;
	playaStunned = true;
}
*/

if(!playaStunned && Playa.sprite_index != babyCrawl){
	if(other.x > x){
		if(!place_meeting(other.x+25,other.y-10,oWall))
			other.x += 25;
		else{
			walked = 0;
			movespeed = -movespeed;
		}
	}

	else if(!place_meeting(other.x-25,other.y-10,oWall))
		other.x -= 25;

	else{
		walked = 0;
		movespeed = -movespeed;
	}

	other.image_blend = c_red;
	playaStunned = true;
}

else if(playaStunned && Playa.sprite_index != babyCrawl) movespeed = -movespeed;

x+=2*movespeed;