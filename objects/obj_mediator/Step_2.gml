/// @description Insert description here
// You can write your code in this editor

#region COUNT VIVOS
var _vivos = 0

for (var index = 0 ; index < coco.limit ; index++ ) begin
	_vivos += player[index].state != fsm.died
end

vivos = _vivos
#endregion