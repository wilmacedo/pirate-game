extends Control

var index = 0
var finished = false

func characterSelection():
	var pirate = Global.piratesInfo[Global.selectedPirate]
	var pirateName = pirate['name']
	var pirateDescription = pirate['description']
	
	return '[color=black]' + pirateName + ':[/color] ' + pirateDescription


func dialogofazenda():
	var dialogs = Global.FazendaDialog
	var intro = dialogs['introd']
	
	
func loadDialog(dialogs):
	if index < dialogs.size():
		finished = false
		
		$RichTextLabel.set_bbcode(dialogs[index])
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	
	if dialogs.size() > 1:
		$"next-indicator".visible = finished
		
		if index >= dialogs.size():
			queue_free()
		
		index += 1

func loadDialogs(type):
	if Global.atualScene == 'charSelection':
		var dialogs = [characterSelection()]
		
		if type == 'ready':
			loadDialog(dialogs)
		else:
			if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("left"):
				loadDialog(dialogs)
	else:
		visible = false
	
	if Global.atualScene == 'ilhaFazenda':
		var dialogs = [dialogofazenda()]
		
		if type == 'ready':
			loadDialog(dialogs)
	else:
		visible = false
	
func _ready():
	loadDialogs('ready')

func _process(delta):
	loadDialogs('process')

func _on_Tween_tween_completed(object, key):
	finished = true
