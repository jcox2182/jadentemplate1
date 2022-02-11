/// @description Insert description here
// You can write your code in this editor
yVector = yVector + grv;
if ( place_meeting(x, y + yVector, oFloor) ) 
{
	while(!place_meeting(x,  y + sign(yVector), oFloor ) ) 
	{
		y = y + sign(yVector);
	}
	yVector = 0;
}
y = y + yVector;

if (place_meeting(x, y + yVector, oDeathbarrier)) {
	room_restart()
}
