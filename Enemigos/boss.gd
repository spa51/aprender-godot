class_name Boss
extends Node2D
@onready var animation_player = $AnimationPlayer
const ESCENA_BARRIL = preload("uid://b5mvip6ay86i4")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func launch_barrel():
	var instancia_barril = ESCENA_BARRIL.instantiate()
	instancia_barril.position = $CharacterSquareRed/CharacterHandRed.position
	add_child(instancia_barril)
	animation_player.play("Reposo")


func _on_timer_timeout() -> void:
	animation_player.play("Lanzar")
	$Timer.wait_time = randf_range(2, 5)
	pass # Replace with function body.
