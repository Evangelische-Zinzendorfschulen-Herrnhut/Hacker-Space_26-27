extends CharacterBody2D

const SPEED = 300
const JUMP_VELOCITY = -500
const GRAVITY = 1200

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_action_pressed("move_left"):
		velocity.x = -SPEED
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.play("run")
	elif Input.is_action_pressed("move_right"):
		velocity.x = SPEED
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.play("run")
	else:
		velocity.x = 0
		$AnimatedSprite2D.play("idle")

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		$AnimatedSprite2D.play("jump")

	move_and_slide()
