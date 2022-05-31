/// @description Laser turn on
// You can write your code in this editor
laserPeices = []
createdLaser = instance_create_layer(x+12,y+13,"Instances_1",oSensorPeice)
array_push(laserPeices, createdLaser)

while (creatingLasers) {
	createdLaser = instance_create_layer(x+12,createdLaser.y+8,"Instances_1",oSensorPeice)
	array_push(laserPeices, createdLaser)
	if (place_meeting(x,  createdLaser.y+8, oFloor)) {
		creatingLasers = false
	}
}

createdLaser = instance_create_layer(x+12,createdLaser.y+8,"Instances_1",oSensorPeice)
array_push(laserPeices, createdLaser)
createdLaser = instance_create_layer(x+12,createdLaser.y+8,"Instances_1",oSensorPeice)
array_push(laserPeices, createdLaser)