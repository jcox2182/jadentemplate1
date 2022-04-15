// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkCollisionsX(){
	if ( place_meeting(x + xVector, y, oFloor) ) 
	{
		while(!place_meeting(x + xVector, y, oFloor ) ) 
		{
			x = x + xDirection;
		}
		xVector = 0;
	}
}