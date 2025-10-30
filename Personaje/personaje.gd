class_name Personaje

extends CharacterBody2D
signal player_hit()

const SPEED = 300.0	
const JUMP_VELOCITY = -800.0

@onready var sprinte_2d = $Sprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		
	
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Cambio de direccion.
	if direction != 0:
		sprinte_2d.scale.x = direction

	move_and_slide()
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("Un cuerpo entro en contacto: ",body.name)
	print("Animacion de alegria")
	pass # Replace with function body.

func damage_received():
	print("daño recibido")
	player_hit.emit()
	
