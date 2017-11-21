/// @description Wall Collisions
// You can write your code in this editor

if(other.x > x)
	movespeed = -abs(movespeed);
else
	movespeed = abs(movespeed);


x+=movespeed;
walked = 0;


