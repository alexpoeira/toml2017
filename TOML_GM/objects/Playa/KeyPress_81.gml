if(timeStop == false){
		timeStop = true;
		alarmTime = alarm_get(alarmIndex);
		alarm[alarmIndex] = -1;
		sprite_index = wall;
}else{
		timeStop = false;
		alarm_set(alarmIndex, alarmTime);
}