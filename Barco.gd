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
		
	
	if Input.is_action_pressed("down"):
		direction = Vector2(0, speed)
	elif Input.is_action_pressed("up"):
		direction = Vector2(0, -speed)
	elif Input.is_action_pressed("left"):
		direction = Vector2(-speed, 0)
	elif Input.is_action_pressed("right"):
		direction = Vector2(speed, 0)
	else:
		direction = Vector2()
	
	move_and_slide(direction)
