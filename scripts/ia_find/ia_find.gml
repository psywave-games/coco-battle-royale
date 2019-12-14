/// resetar variaveis 
self.target_near = id
self.target_distance = map.max_x * map.max_y
			
/// buscar por outros alvos
for (target = 0; target < coco.limit; target++) begin
	/// alvo de busca
	var player = game.player[target]
				
	/// Não focar em players mortos ou si mesmo
	if player == id or player.state == fsm.died	or player.state = fsm.none then
		continue
				
	/// distancia até o player
	var distance = distance_to_object(player)
				
	/// Ignorar players mais longes
	if distance > self.target_distance then 
		continue
				
	/// ATUALIZAR ALVO
	self.target_distance = distance
	self.target_near = player.id
end 