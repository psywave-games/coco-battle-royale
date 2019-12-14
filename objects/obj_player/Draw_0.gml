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


if index begin
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	draw_sprite_ext(spr_Outline, image_index, x, y, image_xscale, image_yscale, image_angle, color, image_alpha)
	
end else begin
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, image_alpha)
	draw_sprite_ext(spr_Outline, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
	draw_text(x -16, y - 30, "COCO")
end


