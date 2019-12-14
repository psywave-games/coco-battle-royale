///////
///
///	@function Create
///	@author RodrigoDornelles <rodrigo@dornelles.me>
///
///	@version	1.1		(12/12/2019) #c6db2a4 gameplay test
///	@revison	1.1.1	(12/12/2019) #4776e3c added smooth camera
///	@revison	1.2		(12/12/2019) #7b5387a started using pattern design mediator
///
///////
///
/// @see				efeitos visuais do jogador
///	@description		shadders
///
///////
///
///	@return void		
///
///////

color_line = index? color: c_white
color_body = index? c_white: color


draw_sprite_ext(sprite_index0, image_index, x, y, image_xscale, image_yscale, image_angle, color_body, image_alpha)
draw_sprite_ext(sprite_index1, image_index, x, y, image_xscale, image_yscale, image_angle, color_line, image_alpha)
draw_sprite_ext(sprite_index2, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)

if state != fsm.died then
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	


