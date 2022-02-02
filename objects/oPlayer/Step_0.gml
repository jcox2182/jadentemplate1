right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check(vk_space);

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
