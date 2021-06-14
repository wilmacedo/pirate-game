extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$StaticBody2D/CollisionPolygon2D.polygon = $Path2D.curve.tessellate()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _process(delta):
	$CanvasLayer/Label.text = str(Global.bau)
	
	if Global.bau == 6:
		get_tree().change_scene("res://Mar.tscn")


func _on_Porta1_body_entered(body):
	$"03_MainDeck".visible = false
	$TileMap2.set_collision_layer_bit(0, false)
	$TileMap2.set_collision_mask_bit(0, false)
	$bautesouro.visible = false
	$bautesouro2.visible = false
	$bautesouro3.visible = false


func _on_Porta2_body_entered(body):
	$"03_MainDeck".visible = true
	$TileMap2.set_collision_layer_bit(0, true)
	$TileMap2.set_collision_mask_bit(0, true)
	$bautesouro.visible = true
	$bautesouro2.visible = true
	$bautesouro3.visible = true


func _on_Porta3_body_entered(body):
	$"03_MainDeck".visible = true
	$TileMap2.set_collision_layer_bit(0, true)
	$TileMap2.set_collision_mask_bit(0, true)
	$bautesouro.visible = true
	$bautesouro2.visible = true
	$bautesouro3.visible = true
