script_execute(states_array[state])
animationHandling()

if (xVector != 0)
    image_xscale = sign(xVector)
	
if (global.hp == 0) { room_restart() }
//if ( place_meeting(x + xVector, y, oBehindWall) ) { sPlayeroutline.alarm[0] = .1 }
//else { sPlayeroutline.alarm[1] = .1 } 
backpackHandling()