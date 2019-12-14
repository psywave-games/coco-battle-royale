#region IA WIN
if self.ia == fsm_ia.win begin
	/// bora se exibir!!!
	var yy = round(global.map_midle_y - self.y)
	self.key_axis_y = abs(yy) > 5 ? sign(yy): 0
	
	/// comemora viado!!!
	if random(100) < 3 begin
		self.key_axis_x = choose (-1, 1)
	end 
end
#endregion

#region IA SLEEP
if self.ia == fsm_ia.sleep and not random(6) begin
	self.ia = fsm_ia.rand
end
#endregion

#region IA RAND
if self.ia == fsm_ia.rand begin
	
	use ia_find()
	if self.target_distance < (coco.size * 3) and not random(30) then
		self.ia = fsm_ia.hunter 
	
	if random(100) < 3 begin
		self.key_axis_x = choose (0, -1, 1)
		self.key_axis_y = choose (0, -1, 1)
	end 
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
	if self.target_near == id or self.target_near.state == fsm.died or self.target_distance > (coco.secure * coco.size * 3) begin
		use ia_find()
	end
end
#endregion		

#region IA HUNTER
if ia = fsm_ia.hunter begin
	/// calcular direção do jogador para se aproximar
	var xx = round(self.target_near.x - self.x)
	var yy = round(self.target_near.y - self.y)
					
	/// seguir suavizado
	self.key_axis_x = abs(xx) > coco.size ? sign(xx): 0
	self.key_axis_y = abs(yy) > coco.size ? sign(yy): 0
	
	/// Atacar jogador perto
	var distance = distance_to_object(self.target_near)
	self.key_attack = distance < coco.size and not random(10)
	
	/// Virar na direção da vitima
	if self.key_attack and abs(xx) then
		image_xscale = sign(xx)
		
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
	
	/// ficar agressivo no x1
	if game.vivos <= 2 then
		self.ia = choose( fsm_ia.hunter, fsm_ia.rand )

	/// calcular por onde fugir
	var xx = round(self.x - self.target_near.x)
	var yy = round(self.y - self.target_near.y)
					
	/// movimentar-se que nem um condenado
	self.key_axis_x = abs(xx) > 1? sign(xx): 0
	self.key_axis_y = abs(yy) > 1? sign(yy): 0
end	
#endregion