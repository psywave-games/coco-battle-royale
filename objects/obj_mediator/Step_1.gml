


#region ATTACK
for (var attacker = 0 ; attacker < coco.limit ; attacker++ ) begin
	// não está atacando
	if not player[attacker].attacking then
		continue
		
	for (var victim = 0 ; victim < coco.limit ; victim++ ) begin
		// não se auto atacar
		if victim == attacker then
			continue
		
		// não atacar morto
		if player[victim].state == fsm.died then
			continue
			
		// bico com bico não mata
		if player[victim].attacking then 
			continue
				
		var sign_x = sign(player[attacker].image_xscale)
		var xx = player[attacker].x + (sign_x * (coco.size/2))
		var yy = player[attacker].y 		
				
		//golpe acertado
		if collision_circle(xx, yy, 19, player[victim], false, false) begin
			player[attacker].attacking = false
			player[victim].state = fsm.died
			player[victim].rank = self.vivos
			break
		end
	end
end
#endregion
