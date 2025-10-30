extends CanvasLayer

const LEVEL_1 = "res://Niveles/level_1.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_title(title):
	$VBoxContainer/Label.text = title

func _on_button_button_down() -> void:
	get_tree().change_scene_to_file(LEVEL_1)
	pass # Replace with function body.
