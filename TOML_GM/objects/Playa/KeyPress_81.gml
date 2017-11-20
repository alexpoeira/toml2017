///@description Time Stop
if(timestop == false){
		timestop = true;
		alarmTime = alarm_get(alarmIndex);
		alarm[alarmIndex] = -1;
		sprite_index = wall;
}else{
		timestop = false;
		if(alarmTime == pointer_null)
			alarm_set(alarmIndex, alarmTime);
		else if(alarmIndex < 2)
			alarm_set(alarmIndex, 2);
		else
			alarm_set(alarmIndex, 3);
}