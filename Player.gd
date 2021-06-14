extends KinematicBody2D

var pirates = ['SemNome3', 'SemNome2', 'SemNome']

var speed = 180
var gravity = 10
var jump_power = -200
var movement = Vector2(0, 0)
var can_double_jump = true

func _ready():
	for i in pirates.size():
		var visible = false
		
		if i == Global.selectedPirate:
			visible = true
		
		get_node(pirates[i]).visible = visible
		
func _physics_process(delta):
	if not is_on_floor():
		movement.y += gravity
	else:
		can_double_jump = false
		movement.y = gravity
		
	var horizontal_axis = Input.get_action_strength("right") - Input.get_action_strength("left")
	
	movement.x = horizontal_axis * speed
	
	#flip sprite
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		movement.y = jump_power
	elif Input.is_action_just_pressed("jump") and can_double_jump:
		can_double_jump = false
		movement.y = jump_power - 100
	
	move_and_slide(movement, Vector2.UP)