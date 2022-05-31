/// @description Laser turn off
// You can write your code in this editor
arrayLength = array_length(laserPeices)
while (arrayLength > 1) {
	arrayLength = array_length(laserPeices)
	instance_destroy(laserPeices[0])
	array_delete(laserPeices, 0, 1)
}