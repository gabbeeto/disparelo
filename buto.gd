extends CharacterBody3D

class_name Jugadores


func _process(_delta: float) -> void:
	var input:Vector2=	Input.get_vector('izq',"der","up","abj")
	velocity = lidiarmov(input) 
	move_and_slide()
 	
func lidiarmov(keys:Vector2) -> Vector3:
	var dir:Vector3
	dir= Vector3(keys.x,0,keys.y)*100

	if is_on_floor():
		dir.y = 0
	else:
		dir.y = -10
		print('se callo')
	return dir 
