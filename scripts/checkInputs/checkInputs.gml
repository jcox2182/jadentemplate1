// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkInputs(){
	right = keyboard_check(ord("D"));
	left = keyboard_check(ord("A"));
	jump = keyboard_check_pressed(vk_up);
	slam = keyboard_check_pressed(vk_down);
	backpackButton = keyboard_check_pressed(ord("Q"));
	dashButton = keyboard_check_pressed(vk_right);
	xDirection = right - left;
}