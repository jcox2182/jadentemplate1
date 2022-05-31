if (!triggered) {
	image_index = BulletSpawner
	if (open) {
		triggered = true
		alarm[2] = .1*room_speed
	} 
	else {
		triggered = true
		alarm[1] = .1*room_speed
	}
}
