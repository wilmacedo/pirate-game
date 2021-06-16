extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_bautesouro_body_entered(body):
	$AnimatedSprite.play("bau")
	$CollisionShape2D.queue_free()
	$AnimatedSprite.queue_free()
	Global.bau += 1
	Global.bauF += 1
	
	if Global.bauF == 2:
		Global.ilhasExploradas += 1
		Global.atualScene = 'sea'
		get_tree().change_scene("res://Mar.tscn")

