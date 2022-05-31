/// @description Insert description here
// You can write your code in this editor
show_debug_message(self)
if (image_index == 6 and open and closing)
	{
		show_debug_message("qweqw")
		open = false
		closing = false
		closed = true
		image_index = BulletSpawnerOpen
		triggered = false
	}
	
else if (image_index == 0 and closed and opening)
	{
		show_debug_message("erkjh")
		closed = false
		opening = false
		open = true
		image_index = BulletSpawnerClosed
		triggered = false
	}
