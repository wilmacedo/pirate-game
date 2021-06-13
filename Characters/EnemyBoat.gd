extends KinematicBody2D

export var velocity = Vector2(150,150)
var state = 0

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		if collision.collider.is_in_group("Ilhas"):
			velocity.y *= -1
			velocity.x *= -1
		elif collision.collider.is_in_group("Wall"):
			velocity.y *= -1
			velocity.x *= -1
			print("asd")
