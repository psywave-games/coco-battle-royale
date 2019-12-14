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



#region FINITE STATE MACHINES
state = fsm.none	// state player
ia	= fsm_ia.none	// state IS
#endregion 

#region GENERATE COLOR
// selecionar cor
color = make_color_rgb(irandom(255),irandom(255),irandom(255))
#endregion

#region INSTANCE CONTROLLS
key_left = false		// [<]
key_right = false		// [>]
key_up = false			// [^]
key_down = false		// [V]
	
key_kick0 = false		// [X]

key_axis_x = 0			// [-]
key_axis_y = 0			// [I]
#endregion 

#region INSTANCE COLISON
outmap = false							// saiu do mapa

target_near = id						// alvo
target_distance = map.max_x * map.max_y // ditancia do alvo
#endregion