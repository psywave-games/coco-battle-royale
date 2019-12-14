///////
///
///	@function macros
///	@author RodrigoDornelles <rodrigo@dornelles.me>
///
///	@version	1.0		(09/12/2019) #7d9f25c chaves graphical improvements
///	@revison	1.1		(12/12/2019) #7b5387a started design pattern finite state machine
///
///////
///
/// @see				processado antes de transpilar
///	@description		constantes e macros do jogo
///
///////
///
///	@return void		
///
///////


/// GML MAIS AMIGAVEL
#macro	use					;				/// @example use variable_global()
#macro	void				;				/// @example return void

/// GAME MEDIADOR OBJECT
#macro	game				obj_mediator				///	@example game.tileset
#macro	init				event_user(0)				/// @example with game init
#macro	prepare				alarm_set(0, room_speed)	/// @example with game prepare						/// @example alarm[attack_stop]

/// MAPA COORDENADAS
enum map {
	start = 5,
	min_x = 1,
	min_y = 1,
	max_x = 780,
	max_y = 570
}


/// FINITE STATE MACHINE MODES
enum fsm {
	none,									/// Jogador está pausado
	died,									/// Jogador está morto
	idle,									/// Jogador está parado
	walk,									/// Jogador está andando
}

/// FINITE STATE MACHINE MODES (IA BOT)
enum fsm_ia{
	none,									/// Bot está desligado
	sleep,									/// Bot está parado
	escape,									/// Bot está fugindo
	hunter,									/// Bot está caçando
	rand,									/// Bot está maluco
}

enum coco {
	secure = 4,
	speed = 6,
	size = 32,
	limit = 20,
}

enum attack{
	time = 3,
	stop = 1
}

