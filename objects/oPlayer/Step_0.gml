script_execute(states_array[state])
animationHandling()

if (xVector != 0)
    image_xscale = sign(xVector)
	
if (global.hp == 0) { room_restart() }
backpackHandling()