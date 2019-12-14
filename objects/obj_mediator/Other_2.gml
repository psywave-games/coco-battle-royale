///////
///
///	@function Game Start
///	@author RodrigoDornelles <rodrigo@dornelles.me>
///
///	@version	1.0		(12/12/2019) #33135f4 started design pattern finite state machine
///	@revison	1.1		(12/12/2019) #c6db2a4 gameplay test
///	@revison	1.1.1	(12/12/2019) #4776e3c added smooth camera
///	@revison	1.2		(12/12/2019) #7b5387a started using pattern design mediator
///
///////
///
/// @see				aloca os jogadores na memoria do mediador
///	@description		instanciar jogo
///
///////
///
///	@return void		
///
///////




#region START PLAYERS
for ( index = 0 ; index < coco.limit ; index++ ) begin
	
	/// GENERATE RANDOM SPAWN
	xx = clamp(irandom(map.max_x), map.min_x + coco.size, map.max_x - coco.size)
	yy = clamp(irandom(map.max_y), map.min_y + coco.size, map.max_y - coco.size)
	
	/// PLAYER SPAWN IN CENTER
	if not index begin 
		xx =( map.min_x + map.max_x ) / 2
		yy =( map.min_y + map.max_y ) / 2
	end
	
	
	player[index] = instance_create_layer(xx, yy, "Instances", obj_player) /// INSTANCIAR PLAYER
	player[index].index = index	/// JOGADOR SABE SEU INDEX
	
end

#endregion

