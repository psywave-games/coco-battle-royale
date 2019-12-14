///////
///
///	@function Step
///	@author RodrigoDornelles <rodrigo@dornelles.me>
///
///	@version	1.1		(12/12/2019) #c6db2a4 gameplay test
///	@revison	1.1.1	(12/12/2019) #4776e3c added smooth camera
///	@revison	1.2		(12/12/2019) #7b5387a started using pattern design mediator
///
///////
///
/// @see				controle de SFM do jogador
///	@description		state change
///
///////
///
///	@return void		
///
///////

#region STATE DEAD
if state = fsm.died then
	return void
	
#endregion

#region STATE MOVIMENT
else if key_axis_x != 0 or key_axis_y != 0 begin
	state = fsm.walk
end

else begin
	state = fsm.idle	
end
#endregion