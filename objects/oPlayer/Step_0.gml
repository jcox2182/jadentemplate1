right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);
slam = keyboard_check_pressed(vk_shift);
backpackButton = keyboard_check_pressed(ord("Q"));

airborne = false
slamFallData = [false,0,0]
xDirection = right - left;
yVector = yVector + grv;
xVector = xSpeed * xDirection;

if ( place_meeting(x + xVector, y, oFloor) ) 
{
	while(!place_meeting(x + xVector, y, oFloor ) ) 
	{
		x = x + xDirection;
	}
	xVector = 0;
}

x = x + xVector;
if (place_meeting(x, y + yVector, oExitDoor_Bottom) or place_meeting(x + xVector, y, oExitDoor_Bottom)) {
	if (backpackEquiped == true) {
		if room_next(room) != -1
	   {
	   room_goto_next();
	   }
	}
}

if (place_meeting(x, y + yVector, oDeathbarrier) or place_meeting(x + xVector, y, oDeathbarrier)) {
	room_restart()
}

if ( place_meeting(x, y + yVector, oFloor) ) 
{
	while(!place_meeting(x,  y + sign(yVector), oFloor ) ) 
	{
		y = y + sign(yVector);
	}
	yVector = 0;
}

y = y + yVector;

if ( place_meeting(x, y + 1, oFloor) and jump ) 
{
	yVector = jumpForce;
}

if ( place_meeting(x, y + 1, oFloor)) 
{
	grv = .1;
	airborneTimer = 0
	airborne = false
	doublejumps = 2
	slamFallData = [false,0,0]
}

if (hp == 0) {
	room_restart()
}

else {
	airborneTimer = airborneTimer + 1;
	show_debug_message(airborneTimer)
	show_debug_message(doublejumps)
	airborne = true
	if (slamFallData[0] and airborneTimer >= slamFallData[2]) {
		slamFallData[2] = airborneTimer + 100
		grv = grv + .01
	} 
}

if (slam and airborne) {
	if (airborneTimer >= 30) {
		slamFallData[0] = true
		slamFallData[1] = airborneTimer
		slamFallData[2] = airborneTimer + 100
		grv = .3;
	}
}

if (jump and airborne and doublejumps >= 1 and backpackEquiped == false)
{
	yVector = jumpForce;
	doublejumps = doublejumps - 1;
}

if (backpackButton) {
	if (backpackEquiped) {
		backpackEquiped = false
		instance_create_layer(x,y,layer,oBackpack)
		sprite_index = sPlayer_NoBackpack;
		jumpForce = -3.5;
		xSpeed = 3;
	}
	else {
		if ( place_meeting(x, y + yVector, oBackpack) or place_meeting(x + xVector, y, oBackpack) ) {
		instance_destroy(oBackpack)
		backpackEquiped = true
		sprite_index = sPlayer;
		jumpForce = -4;
		xSpeed = 2.5;
		}
	}
}
show_debug_message(y)