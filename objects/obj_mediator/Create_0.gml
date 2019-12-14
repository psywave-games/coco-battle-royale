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
/// @see				valores padrões das variaveis
///	@description		init variables
///
///////
///
///	@return void		
///
///////


tileset = layer_tilemap_get_id(layer_get_id("Tiles"))
player = array_create(coco.limit)
vivos = coco.limit

start_in = map.start

global.map_midle_x = ( map.min_x + map.max_x ) / 2
global.map_midle_y = ( map.min_y + map.max_y ) / 2