extends Control

@onready var text_field = $PanelContainer/MarginContainer/RichTextLabel
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton:
		queue_free()
