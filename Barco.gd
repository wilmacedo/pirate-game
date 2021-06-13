extends KinematicBody2D

var speed = 3

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
			
		if dir == 'left':
			get_node("Sprite").flip_h = true
		elif dir == 'right':
			get_node("Sprite").flip_h = false
		
	move_and_collide(direction)
