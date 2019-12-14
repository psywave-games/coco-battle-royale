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
	case fsm.idle:
		hspeed = 0
		vspeed = 0
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


#region ANIMACAO
switch state begin
	
	case fsm.died:
		sprite_index = spr_idle
		break
	
	case fsm.idle:
		sprite_index = spr_idle
		break
	
	case fsm.walk:
		sprite_index = spr_walk
		break
	

end
#endregion
