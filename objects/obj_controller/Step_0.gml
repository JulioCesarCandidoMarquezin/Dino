if !global.alive {
	layer_hspeed("Ground", 0)
	layer_hspeed("Sky", 0)
	layer_hspeed("Sky2", 0)
	layer_set_visible("Retry", true)
	if score > global.hi {
		global.hi = score
	}
	if !played_die_sdn {
		audio_play_sound(snd_hurt, 0, 0)
		played_die_sdn = true
	}
} else {
	if !(instance_number(obj_cactus) + instance_number(obj_bird)) {
		var obj = enemys[irandom(array_length_1d(enemys) - 1)]
	
		if obj == obj_bird {
			var heinght = choose(480, 540)
			instance_create_layer(room_width - 50, heinght, "Enemys", obj)
		} else {
			instance_create_layer(room_width - 50, 540, "Enemys", obj)
		}
	}
	
	score += 1
}