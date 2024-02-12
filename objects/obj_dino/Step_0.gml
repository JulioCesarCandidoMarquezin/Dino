if global.alive {
	if (y < 544) {
	    gravity = 0.3;
	    vspeed += gravity;
		image_speed = 0
	} else {
	    vspeed = 0;
	    gravity = 0;
		image_speed = 1
	}

	var up = keyboard_check(vk_space) || keyboard_check(vk_up) || keyboard_check(ord("W"));

	var down = keyboard_check(vk_down) || keyboard_check(ord("S"))

	if (y >= 544) {
		if (down - up) {
		    sprite_index = spr_dino_duck
		}  else {
			if up {
				audio_play_sound(snd_jump, 0, 0)
				vspeed = jump;
			}
			sprite_index = spr_dino
		}	
	}
}