extends Sprite2D

@export_multiline var item_description := "placeholder" 

var item_popup_scene = preload("res://item_popup.tscn")

@onready var original_scale = scale

# Called when the node enters the scene tree for the first time.
func _ready():
	$Area2D.mouse_entered.connect(mouse_over)
	$Area2D.mouse_exited.connect(mouse_off)
	$Area2D.input_event.connect(i_e)


func i_e(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		var instance = item_popup_scene.instantiate()
		get_parent().add_child(instance)
		instance.text_field.text = item_description
		
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func mouse_over():
	scale = original_scale * 1.1
	

func mouse_off():
	scale = original_scale
