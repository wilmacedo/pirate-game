extends Node2D

func finalScene():
	var boatX = 724.808
	var boatY = -106.473
	
	$Barco.set_position(Vector2(boatX, boatY))
	
	$EnemyBoat.set_position(Vector2(529.549, boatY))
	
	$EnemyBoat2.set_position(Vector2(901.226, boatY))
	$EnemyBoat2.scale.x *= -1
	
	$EnemyBoat3.set_position(Vector2(boatX, -221.871))
	$EnemyBoat3.get_node("AnimatedSprite").play('Baixo')
	
	$EnemyBoat4.set_position(Vector2(boatX, 7.434))
	$EnemyBoat4.get_node("AnimatedSprite").play('Cima')

func _ready():
	if Global.finish:
		finalScene()
	pass
