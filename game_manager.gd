extends Node2D


var dialog

# Called when the node enters the scene tree for the first time.
func _ready():
	$UI/Overlay/NatashaButton.pressed.connect(open_natasha)
	$UI/Overlay/MariaButton.pressed.connect(open_maria)
	Dialogic.timeline_ended.connect(close_character)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func open_natasha():
	#$UI/Dialogue.show()
	$UI/Overlay.hide()
	if Dialogic.current_timeline != null:
		return
	dialog = Dialogic.start('timeline')

func open_maria():
	#$UI/Dialogue.show()
	$UI/Overlay.hide()
	if Dialogic.current_timeline != null:
		return
	dialog = Dialogic.start('timeline-maria')


func close_character():
	#$UI/Dialogue.hide()
	$UI/Overlay.show()
	#dialog.end_timeline()
