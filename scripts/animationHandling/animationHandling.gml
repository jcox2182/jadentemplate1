// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animationHandling(){
	if (backpackEquiped == true) {
		sprite_index = spritesB_array[state]
	}
	else {
		sprite_index = spritesNB_array[state]
	}
}