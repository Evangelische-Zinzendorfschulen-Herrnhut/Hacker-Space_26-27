extends CharacterBody2D

const START_POSITION := Vector2(480, 350)
const START_SPEED := 330.0
const SPEED_UP := 18.0
const BOTTOM_LIMIT := 660.0

var speed := START_SPEED
var direction := Vector2(0.65, -1.0).normalized()

func _ready() -> void:
	reset_ball()

func _physics_process(delta: float) -> void:
	var collision := move_and_collide(direction * speed * delta)

	if collision:
		direction = direction.bounce(collision.get_normal()).normalized()
		speed += SPEED_UP

	if position.y > BOTTOM_LIMIT:
		reset_ball()

func reset_ball() -> void:
	position = START_POSITION
	speed = START_SPEED
	direction = Vector2([-0.65, 0.65].pick_random(), -1.0).normalized()
