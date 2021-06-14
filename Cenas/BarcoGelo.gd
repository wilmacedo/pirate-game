extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _on_Area2D_body_entered(body):
	$"04b_UpperDeck".visible = true
	$volta/CollisionShape2Dvolta.set_disabled(false)


func _on_volta_body_entered(body):
	$"04b_UpperDeck".visible = false
