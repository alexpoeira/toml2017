if(Playa.x > x){
		if(!place_meeting(Playa.x+25,Playa.y-10,oWall))
			Playa.x += 25;
	/*	else{
			walked = 0;
		}*/
	}

	else if(!place_meeting(Playa.x-25,Playa.y-10,oWall))
		Playa.x -= 25;

	/*else{
		walked = 0;
	}*/

	Playa.image_blend = c_red;
	playaStunned = true;