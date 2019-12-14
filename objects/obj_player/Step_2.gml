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
/// @see				movimentação e animação do jogador
///	@description		moviment/animation
///
///////
///
///	@return void		
///
///////

#region MOVIMENTACAO
switch state begin
	
	case fsm.died:
		image_alpha = 0.4
		image_yscale = -1 
		
	case fsm.idle:
		speed = 0
		break
		
	case fsm.walk:
		direction = point_direction(0,0,key_axis_x, key_axis_y)
		speed = coco.speed
		
		if key_axis_x != 0 begin
			image_xscale = key_axis_x
		end
		
		break
		
end
#endregion

#region ANIMACAO CORPO

if attacking begin 
	sprite_index0 = spr_bic0
	sprite_index1 = spr_bic1
	sprite_index2 = spr_bic2
end 

else begin 
	sprite_index0 = spr_idle0
	sprite_index1 = spr_idle1
	sprite_index2 = spr_idle2 

end
#endregion

#region ANIMACAO PERNAS
switch state begin

	case fsm.walk:
		sprite_index = spr_walk 
		break
		
	default:
		sprite_index = spr_stay
		break
		
end
#endregion
