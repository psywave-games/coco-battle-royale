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


state = fsm.idle
ia	= fsm_ia.stoped

color = make_color_rgb(irandom(255),irandom(255),irandom(255))

key_left = false
key_right = false
key_up = false
key_down = false
	
key_kick0 = false

key_axis_x = 0
key_axis_y = 0

outmap = false

target_near = id
target_distance = map.max_x * map.max_y