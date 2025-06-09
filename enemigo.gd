extends CharacterBody3D
var camino:bool = true  
func _process(_delta: float) -> void:
	move_and_slide()
	if camino:
		velocity.x=10
	else:
		velocity.z=10
	print(velocity)
func _on_timer_timeout() -> void:
	camino = not camino 
	print('funciona') 
	pass # Replace with function body.
