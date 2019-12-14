///////
///
///	@function Begin Step
///	@author RodrigoDornelles <rodrigo@dornelles.me>
///
///	@version	1.1		(12/12/2019) #c6db2a4 gameplay test
///	@revison	1.1.1	(12/12/2019) #4776e3c added smooth camera
///	@revison	1.2		(12/12/2019) #7b5387a started using pattern design mediator
///
///////
///
/// @see				controles e colisões do jogador
///	@description		inputs/colisons
///
///////
///
///	@return void		
///
///////


#region STATE NONE/DEAD
if state == fsm.none or state == fsm.died begin
	attack = false
	return void
end
#endregion

#region INPUT HUMAN
if index == 0 begin

	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
	key_attack = keyboard_check_pressed(vk_space)
	
	key_axis_x = key_right - key_left 
	key_axis_y = key_down - key_up 
end
#endregion

#region INPUT IA
/// Ia ativada
else if ia != fsm_ia.none begin
	
	/// Mudar comportamento
	if random(100) < 2 then
		ia  = choose (fsm_ia.hunter, fsm_ia.escape, fsm_ia.rand, fsm_ia.sleep)
	
	use artificial_intelligence()
	
end
#endregion

#region ATTACK
if not attacking and key_attack begin 
	alarm[attack.stop] = round (room_speed / attack.time) /// acabar o ataque
	attacking = true /// começar a atacar
end
#endregion

#region COLISON
	
	/// RESET MODE
	if ia == fsm_ia.escape or ia == fsm_ia.none begin
		// bot or player stop
		reset = 0
	end
	else begin
		// Bot invert direction
		reset = -1
	end
	
	
	/// GET NEXT POSITION
	prevx = x
	prevy = y
	nextx = x + (key_axis_x * coco.size)
	nexty =	y + (key_axis_y * coco.size)
	
	/// COLISON IN BORDER MAP
	if nextx >= map.max_x or nextx <= map.min_x then
		key_axis_x *= reset
	if nexty >= map.max_y or nexty <= map.min_y then
		key_axis_y *= reset
	
	/// COLISON IN TILESET
	if tilemap_get_at_pixel(game.tileset, nextx, prevy) then
		key_axis_x *= choose(0, reset)
	if tilemap_get_at_pixel(game.tileset, prevx, nexty) then
		key_axis_y *= choose(0, reset)
		
	/// OUTMAP DETECT AND KILL
	if x > map.max_x or x < map.min_x or y > map.max_y or y < map.min_y then 
		outmap = true
	
#endregion
