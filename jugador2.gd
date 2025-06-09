extends Jugadores

func _process(_delta: float) -> void:
	var input:Vector2=	Input.get_vector('izq2',"der2","up2","abj2")
	velocity = lidiarmov(input) 
	move_and_slide()
