extends KinematicBody2D

var pirates = ['SemNome3', 'SemNome2', 'SemNome']

func _ready():
	for i in pirates.size():
		var visible = false
		
		if i == Global.selectedPirate:
			visible = true
		
		get_node(pirates[i]).visible = visible
