extends CharacterBody2D

const SPEED := 520.0
const LEFT_LIMIT := 150.0
const RIGHT_LIMIT := 810.0

func _physics_process(_delta: float) -> void:
	velocity.x = 0.0
	velocity.y = 0.0

	if Input.is_action_pressed("move_left"):
		velocity.x = -SPEED

	if Input.is_action_pressed("move_right"):
		velocity.x = SPEED

	move_and_slide()
	position.x = clamp(position.x, LEFT_LIMIT, RIGHT_LIMIT)
