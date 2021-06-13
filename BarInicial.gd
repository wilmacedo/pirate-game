extends Node2D

var selectedPirate = 0
var pirates = ['Box', 'Box2', 'Box3']

func _ready():
	pass

func changePlayer(direction):
	var dir = 0
	if (direction == 'left'):
		dir = -1
	elif (direction == 'right'):
		dir = 1
	else:
		return
		
	if (selectedPirate + dir > 2 || selectedPirate + dir < 0):
		return
		
	selectedPirate += dir
	
	for i in pirates.size():
		var visible = false
		
		if (selectedPirate == i):
			visible = true
			
		get_node(pirates[i]).visible = visible

func selectPirate():
	Global.selectedPirate = selectedPirate
	get_tree().change_scene("res://Mar.tscn")

func _process(delta):
	if Input.is_action_just_pressed("left"):
		changePlayer('left')
	elif Input.is_action_just_pressed('right'):
		changePlayer('right')
	elif Input.is_action_just_pressed('enter'):
		selectPirate()
