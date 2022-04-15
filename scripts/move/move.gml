// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move()
{
	checkInputs();
	if (xDirection != 0)
	{
		recentDirection = xDirection
	}
	xVector = xSpeed * xDirection + iweewhlkj;
	if (iweewhlkj != 0)
	{
		if (iweewhlkj > 0)
		{
			iweewhlkj = iweewhlkj - .5
		}
		else
		{
			iweewhlkj = iweewhlkj + .5
		}
	}
	
	checkCollisionsX();
	x = x + xVector;
	
	yVector = yVector + grv;
	checkCollisionsY();
	y = y + yVector;

}