if (turnon) {
	if (laserOn == false) {
		alarm_set(1,.1*room_speed)
		laserOn = true
		creatingLasers = true
	}
	else if (laserOn == true) {
		alarm_set(2,.1*room_speed)
		laserOn = false
	}
	turnon = false
}