// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statePlayerSlamming(){
	move()
	grv = .5;
	if ( place_meeting(x, y + 1, oFloor)) 
	{
		grv = .15
		state = states.walking
	}
} 