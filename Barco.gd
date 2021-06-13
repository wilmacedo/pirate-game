extends KinematicBody2D

var speed = 60
var direction = Vector2()

func _physics_process(delta):
	var vectors = {
		"down": Vector2(0, speed),
		"up": Vector2(0, -speed),
		"left": Vector2(-speed, 0),
		"right": Vector2(speed, 0)
	}
	
	for dir in vectors:
		if Input.is_action_pressed(dir):
			direction = vectors[dir]
	
	move_and_slide(direction)
