// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statePlayerIdle(){
	checkInputs()
	yVector = yVector + grv;
	checkCollisionsY();
	y = y + yVector;

	if (xDirection != 0)
	{
		state = states.walking
	}

	if ( place_meeting(x, y + 1, oFloor) and jump ) 
		{
			state = states.jumping
		}
}