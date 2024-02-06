extends KinematicBody2D

func _physics_process(delta):
	if Input.is_action_pressed("player2_cima"):
		move_and_collide(Vector2(0, -150) * delta)
	
	if Input.is_action_pressed("player2_baixo"):
		move_and_collide(Vector2(0, 150) * delta)
