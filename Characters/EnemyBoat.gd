extends KinematicBody2D

var directionCounter = 0
var maxScale = 200
var direction = 0
var speed = 1

var vectors = [
	Vector2(0, speed), #down
	Vector2(-speed, 0), #left
	Vector2(0, -speed), #up
	Vector2(speed, 0) #right
]

func changeDirection():
	directionCounter += 1
	
	if directionCounter % maxScale == 0:
		directionCounter = 0
			
		if direction >= vectors.size() - 1:
			direction = 0
		else:
			direction += 1
		

func changeViewPosition():
	if direction != 1 && direction != 3:
		if direction == 2:
			$AnimatedSprite.play('Cima')
		else:
			$AnimatedSprite.play('Baixo')
	else:
		var scale = 1
		
		if direction != 3:
			scale = -1
		
		$AnimatedSprite.scale.x = scale
		$AnimatedSprite.play('Lado')

func _physics_process(delta):
	if Global.finish:
		return
	
	changeDirection()
	changeViewPosition()
		
	move_and_collide(vectors[direction])
