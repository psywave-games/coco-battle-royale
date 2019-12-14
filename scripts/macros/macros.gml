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
#macro	game				obj_mediator	///	@example game.tileset

/// MAPA COORDENADAS
enum map {
	min_x = 1,
	min_y = 1,
	max_x = 780,
	max_y = 570
}


/// FINITE STATE MACHINE MODES
enum fsm {
	died,									/// Jogador está morto
	idle,									/// Jogador está parado
	walk,									/// Jogador está andando
}

/// FINITE STATE MACHINE MODES (IA BOT)
enum fsm_ia{
	stoped,									/// Bot está desligado
	sleep,									/// Bot está parado
	escape,									/// Bot está fugindo
	hunter,									/// Bot está caçando
	rand,									/// Bot está maluco
}

enum coco {
	secure = 4,
	speed = 8,
	size = 32,
	limit = 20
}


