// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function backpackHandling(){
	if (backpackButton) {
		if (backpackEquiped) {
			backpackEquiped = false
			instance_create_layer(x-16,y,layer,oBackpack)
			xSpeed = 3.5
			grv = .1;
			xVector = xSpeed * xDirection;
		}
		else {
			if ( place_meeting(x, y + yVector, oBackpack) or place_meeting(x + xVector, y, oBackpack) ) {
				backpackEquiped = true
				instance_destroy(oBackpack)
				xSpeed = 3
				grv = .15;
				xVector = xSpeed * xDirection
			}
		}
	}
}