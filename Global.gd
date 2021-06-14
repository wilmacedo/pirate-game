extends Node2D

export var bau = 0

export var selectedPirate = 0
export var atualLocation = 'sea'
export var defaultSpeed = 10

export var piratesInfo = [
	{
		'name': 'Pirate 1',
		'description': 'Description for pirate 1'
	},
	{
		'name': 'Pirate 2',
		'description': 'Description for pirate 2'
	},
	{
		'name': 'Pirate 3',
		'description': 'Description for pirate 3'
	},
]

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
