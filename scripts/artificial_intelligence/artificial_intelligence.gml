#region IA RAND
if self.ia == fsm_ia.rand and random(100) < 3 begin
	self.key_axis_x = choose (0, -1, 1)
	self.key_axis_y = choose (0, -1, 1)
end
#endregion

#region IA SLEEP
if self.ia == fsm_ia.sleep begin 
	self.key_axis_x = 0
	self.key_axis_y = 0
end
#endregion 

#region IA TARGET
/// se estiver com alvo travado
else if ia = fsm_ia.hunter or ia = fsm_ia.escape begin
	/// alvo travado não é mais valido
	if self.target_near == id or player.state == fsm.died or self.target_distance > (coco.secure * coco.size * 3) begin
		
		/// resetar variaveis 
		self.target_near = id
		self.target_distance = map.max_x * map.max_y
			
		/// buscar por outros alvos
		for (target = 0; target < coco.limit; target++) begin
			/// alvo de busca
			player = game.player[target]
				
			/// Não focar em players mortos ou si mesmo
			if player == id or player.state == fsm.died	then
				continue
				
			/// distancia até o player
			distance = distance_to_object(player)
				
			/// Ignorar players mais longes
			if distance > self.target_distance then 
				continue
				
			/// ATUALIZAR ALVO
			self.target_distance = distance
			self.target_near = player.id
		end 
	end
end
#endregion		

#region IA HUNTER
if ia = fsm_ia.hunter begin
	/// calcular direção do jogador para se aproximar
	xx = round(player.x - x)
	yy = round(player.y - y)
					
	/// seguir suavizado
	self.key_axis_x = abs(xx) > coco.size ? sign(xx): 0
	self.key_axis_y = abs(yy) > coco.size ? sign(yy): 0
end 
#endregion

#region IA ESCAPED
else if target_distance > (coco.size * coco.secure) and ia == fsm_ia.escape  begin
	// escapou com sucesso
	ia = fsm_ia.rand
end
#endregion

#region IA ESCAPING
else if ia == fsm_ia.escape begin
	/// calcular por onde fugir
	xx = round(x - player.x)
	yy = round(y - player.y)
					
	/// movimentar-se que nem um condenado
	self.key_axis_x = abs(xx) > 1? sign(xx): 0
	self.key_axis_y = abs(yy) > 1? sign(yy): 0
end	
#endregion