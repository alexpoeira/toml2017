/// @description Attack
// You can write your code in this editor

if(spriteIndex == playaAdult){
	
	if(timeSinceAttack > 1000000){
		if(image_xscale == 1 && place_meeting(x+40,y,Enemy)){
		    var enemy =	instance_nearest(x+40, y, Enemy);
			enemy.x+= 30;
			enemy.hp -= 5;
			enemy.image_blend = c_red;
		}
	
		else if(place_meeting(x-40,y,Enemy)){
			var enemy =	instance_nearest(x-40, y, Enemy);
			enemy.x-= 30;
			enemy.hp -= 5;
			enemy.image_blend = c_red;
		}
		timeSinceAttack = 0;
	}
}
