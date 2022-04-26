// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move()
{
	checkInputs();
	if (xDirection != 0)
	{
		recentDirection = xDirection
	}
	x = x + beltspeedx
	xVector = xSpeed * xDirection + dashSpeed;
	if (dashSpeed != 0)
	{
		if (dashSpeed > 0)
		{
			dashSpeed = dashSpeed - .5
		}
		else
		{
			dashSpeed = dashSpeed + .5
		}
	}
	
	checkCollisionsX();
	x = x + xVector;
	
	yVector = yVector + grv;
	checkCollisionsY();
	y = y + yVector;

}