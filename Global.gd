extends Node2D

export var selectedPirate = 0
export var atualLocation = 'sea'
export var defaultSpeed = 10

func getBoatSpeed():
	var speed = defaultSpeed
	var speeds = {
		'sea': 3,
		'island': 15
	}
	
	for loc in speeds:
		if (loc == atualLocation):
			speed = speeds[loc]
			
	return speed

func _ready():
	pass
