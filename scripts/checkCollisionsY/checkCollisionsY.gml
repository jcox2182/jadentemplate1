// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkCollisionsY(){
	if ( place_meeting(x, y + yVector, oFloor) ) 
		{
			while(!place_meeting(x,  y + sign(yVector), oFloor ) ) 
				{
					y = y + sign(yVector);
				}
			yVector = 0;
		}
}