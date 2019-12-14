/// @description Insert description here
// You can write your code in this editor

#region TEXTO: "Vivos: "
if game.vivos > 1 then 
	draw_text(x,y, "Cocks: " + string(vivos))
#endregion

#region TEXTO: "Comeca em x...
if start_in begin
	draw_text(
		global.map_midle_x,
		global.map_midle_y,
		"starting at " + string (start_in) + "..."
	)
end
#endregion

#region TEXTO: "#x You were fried."
if game.player[0].state == fsm.died and game.vivos == 1 begin
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);


	draw_text_transformed(
		global.map_midle_x,
		global.map_midle_y, 
		"#" + string(self.player[0].rank) + "\nYou were fried.",
		2,
		2, 
		image_angle
	)
end
#endregion

#region TEXTO: "#1 Ultimate Hot Chicken!!"
if game.player[0].state != fsm.died and game.vivos == 1 begin
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);


	draw_text_transformed(
		global.map_midle_x,
		global.map_midle_y, 
		"#1\nYou Are\nUltimate\nHot Chicken!!",
		2,
		2, 
		image_angle
	)
end
#endregion