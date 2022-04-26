// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function statePlayerJumping(){
		if canJump
		{
			canJump = false
			jumping = true
			yVector = jumpForce
			if ( jumping and jump and jumpsLeft >= 1) {
			jumpsLeft = jumpsLeft - 1
			yVector = jumpForce
			}
		}
		
		move();
		
		if ( place_meeting(x, y + 1, oFloor)) 
		{
			canJump = true
			state = states.walking
			airborneTimer = 0
			jumping = false 
			canDash = true
		}
		else if (slam)
		{
			state = states.slamming
		}
		else if (dashButton and backpackEquiped == false)
		{
			state = states.dashing
		}
}