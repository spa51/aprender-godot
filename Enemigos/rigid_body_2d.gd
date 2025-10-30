class_name  Barril
extends RigidBody2D

@export var demaciado_abajo = 1000
const Barril_rojo = preload("uid://bguus3wcy17ko")

#daño del barril
var damage_done = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y > demaciado_abajo:
		queue_free()
	pass


func _on_body_entered(body: Node) -> void:
	if body is Personaje:
		if not damage_done:
			print("Jugador Heriido")
			damage_done = true
			$CharacterHandYellow.texture = Barril_rojo
			if body.has_method("damage_received"):
				body.damage_received()
	pass # Replace with function body.
