extends Node2D

var casa1 = false
var casa2 = false

func _physics_process(delta):
	if Input.is_action_just_pressed("saquear") and casa1 == true:
		$bautesouro.visible = true
	if Input.is_action_just_pressed("saquear") and casa2 == true:
		$bautesouro2.visible = true


func _on_casa3_body_entered(body):
	$interact_button_input.visible = true
	$AnimationPlayer.play("button")
	casa1 = true
	
	
func _on_casa2_body_entered(body):
	$interact_button_input2.visible = true
	$AnimationPlayer.play("button2")
	casa2 = true
