// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statePlayerDash(){
	move();
	if (canDash) {
		canDash = false
		if (recentDirection == 1)
		{
			iweewhlkj = 10
		}
		else {
			iweewhlkj = -10
		}
	}
	checkCollisionsX();
	if ( place_meeting(x, y + 1, oFloor)) 
		{
			state = states.walking
		}
	else {
		state = states.jumping
	}
}