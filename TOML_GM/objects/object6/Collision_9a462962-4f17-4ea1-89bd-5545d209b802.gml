if(Playa.sprite_index != babyCrawl){
	if(Playa.x > x){
		if(!place_meeting(Playa.x+25,Playa.y-10,oWall))
			Playa.x += 25;
	}

	else if(!place_meeting(Playa.x-25,Playa.y-10,oWall))
		Playa.x -= 25;
	Playa.image_blend = c_red;
	playaStunned = true;
}