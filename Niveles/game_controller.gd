extends Node2D

signal player_life_update(new_player_life)
signal time_update(seconds_left)

const  SCENE_FINISH_FILE = "res://Enemigos/scene_final.tscn"

@export var player_life = 3 
@export var time_seconds = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func game_over():
	print("Has Perdido")
	get_tree().change_scene_to_file(SCENE_FINISH_FILE)

func game_victory():
	print("Has Ganado")
	var scene_finish_instance = preload(SCENE_FINISH_FILE).instantiate()
	scene_finish_instance.set_title("HAS GANADO")
	add_child(scene_finish_instance)
	


func _on_personaje_player_hit() -> void:
	print("GameController se entera del daño")
	if player_life > 0:
		player_life = player_life - 1
		player_life_update.emit(player_life)
	else:
		game_over()
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	game_victory()
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	if time_seconds > 0:
		time_seconds = time_seconds - 1
	if time_seconds <= 0:
		game_over()
	time_update.emit(time_seconds)
	pass # Replace with function body.
