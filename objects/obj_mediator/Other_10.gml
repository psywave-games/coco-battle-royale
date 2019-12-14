/// @description Insert description here
// You can write your code in this editor




#region STATE MACHINE POWER ON
for ( index = 0 ; index < coco.limit ; index++ ) begin
	/// Destravar IA
	if index then 
		player[index].ia = choose(fsm_ia.sleep,fsm_ia.rand)
	
	/// Destravar Jogador
	player[index].state = fsm.idle	
end
#endregion