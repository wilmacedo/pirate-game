extends KinematicBody2D

func _physics_process(delta):
	if Global.finish:
		return
	
	var direction = Vector2()
	var vectors = {
		"down": Vector2(0, Global.getBoatSpeed()),
		"up": Vector2(0, -Global.getBoatSpeed()),
		"left": Vector2(-Global.getBoatSpeed(), 0),
		"right": Vector2(Global.getBoatSpeed(), 0)
	}
	
	for dir in vectors:
		if Input.is_action_pressed(dir):
			direction = vectors[dir]
			changeViewPosition(dir)
	
	move_and_collide(direction)


func changeViewPosition(direction):
	if direction != 'left' && direction != 'right':
		if direction == 'up':
			$Sprite.play('cima')
		else:
			$Sprite.play('Baixo')
	else:
		var scale = 1
		
		if direction != 'right':
			scale = -1
		
		$Sprite.scale.x = scale
		$Sprite.play('Direita')
