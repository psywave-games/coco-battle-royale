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
for (var index = 0 ; index < coco.limit ; index++ ) begin
	
	var xx = global.map_midle_x
	var yy = global.map_midle_y
	 
	/// GENERATE RANDOM SPAWN DISTANCE OFF PLAYER
	if index begin 
		do begin
			xx = clamp(irandom(map.max_x), map.min_x + coco.size, map.max_x - coco.size)
			yy = clamp(irandom(map.max_y), map.min_y + coco.size, map.max_y - coco.size)
			near = instance_nearest(xx, yy, obj_player)
		end until point_distance(near.x, near.y, xx, yy) > (coco.size * 3)
	end
	
	
	player[index] = instance_create_layer(xx, yy, "Instances", obj_player) /// INSTANCIAR PLAYER
	player[index].index = index	/// JOGADOR SABE SEU INDEX
end
#endregion

with game prepare