extends KinematicBody2D

export var velocity = Vector2(150,150)
var state = 0

onready var softCollision = $RangeBarco

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		if collision.collider.is_in_group("Ilhas"):
			velocity.y *= -1
			velocity.x *= -1
		elif collision.collider.is_in_group("Wall"):
			velocity += softCollision.get_push_vector() * delta * 400
			velocity = move_and_slide(velocity)
			print("asd")
