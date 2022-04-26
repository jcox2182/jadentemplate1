/// @description Insert description here
// You can write your code in this editor
if (!place_meeting(x + other.id.beltspeed, y, oFloor) ) 
{
	xVector = other.id.beltspeed
}
else if (!place_meeting(x + 1, y, oFloor))
{
	xVector = 1
}
x = x + xVector
