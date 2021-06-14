extends KinematicBody2D

var speed = 60

func _physics_process(delta):
	var direction = Vector2()
	var vectors = {
		"down": Vector2(0, speed),
		"up": Vector2(0, -speed),
		"left": Vector2(-speed, 0),
		"right": Vector2(speed, 0)
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
