// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkInputs(){
	right = keyboard_check(vk_right);
	left = keyboard_check(vk_left);
	jump = keyboard_check_pressed(vk_space);
	slam = keyboard_check_pressed(vk_lcontrol);
	backpackButton = keyboard_check_pressed(ord("Q"));
	dashButton = keyboard_check_pressed(vk_lshift);
	grapple = keyboard_check_pressed(ord("F"));
	xDirection = right - left;
}