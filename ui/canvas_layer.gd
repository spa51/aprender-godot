extends CanvasLayer

const Corazon_lleno = preload("uid://dgsxjibpxtyko")
const Corazon_Vacio = preload("uid://foq3vxbfbn4c")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_game_controller_player_life_update(new_player_life: Variant) -> void:
	$"HBoxContainer/Corazon 1".texture = Corazon_lleno if new_player_life >= 1 else Corazon_Vacio
	$"HBoxContainer/Corazon 2".texture = Corazon_lleno if new_player_life >= 2 else Corazon_Vacio
	$"HBoxContainer/Corazon 3".texture = Corazon_lleno if new_player_life >= 3 else Corazon_Vacio
	pass # Replace with function body.


func _on_game_controller_time_update(seconds_left: Variant) -> void:
	$TextureRect/Label.text = str(seconds_left)
	pass # Replace with function body.
