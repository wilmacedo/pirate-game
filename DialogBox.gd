extends Control

var index = 0
var finished = false

func characterSelection():
	var pirate = Global.piratesInfo[Global.selectedPirate]
	var pirateName = pirate['name']
	var pirateDescription = pirate['description']
	
	return '[color=black]' + pirateName + ':[/color] ' + pirateDescription
	
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

func loadDialogs():
	var dialogs = []
	
	if Global.atualScene == 'charSelection':
		dialogs = [characterSelection()]
	elif Global.atualScene == 'farmIsland':
		dialogs = Global.FazendaDialog
	elif Global.atualScene == 'tresureIsland':
		dialogs = Global.TesouroDialog
	elif Global.atualScene == 'shipIsland':
		dialogs = Global.NavioDialog
	elif Global.atualScene == 'finalScene':
		dialogs = Global.finalDialog
	else:
		visible = false
		
	loadDialog(dialogs)
	
func _ready():
	loadDialogs()

func _process(delta):
	if Global.atualScene == 'charSelection':
		if Input.is_action_just_pressed("right") or Input.is_action_just_pressed("left"):
				loadDialogs()
	else:
		if Input.is_action_just_pressed('ui_accept'):
			loadDialogs()

func _on_Tween_tween_completed(object, key):
	finished = true
