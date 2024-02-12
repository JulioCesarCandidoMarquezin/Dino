draw_set_color(c_dkgray)
draw_set_halign(2)
draw_set_font(fnt_score)

draw_text(room_width - 20, 20, string(score))

var _hi = "HI: " + string(global.hi)
draw_set_color(c_gray)
draw_text(room_width - 150, 20, _hi)