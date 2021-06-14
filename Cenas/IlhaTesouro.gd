extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.is_action_pressed("Mapa"):
		$CanvasLayer/Minimap.position = Vector2(159.975, 94.505)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	$AnimatedSprite.visible = true
	$AnimatedSprite.play("Abrir2")
	$Area2D/CollisionShape2D2.disabled = true
