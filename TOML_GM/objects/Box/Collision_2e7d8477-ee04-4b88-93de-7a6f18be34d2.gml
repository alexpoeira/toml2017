/// @description Insert description here
// You can write your code in this editor

Playa.hsp = 0;

if(Playa.x > x){
	if(!instance_place(x-pushSpeed,y,oWall))
		x -= pushSpeed;
}

else{
	if(!instance_place(x+pushSpeed,y,oWall))
		x += pushSpeed;
}