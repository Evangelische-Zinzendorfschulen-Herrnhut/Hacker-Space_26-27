extends CharacterBody2D


const SPEED = 100.0



func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite2D.play("run_left")
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite2D.play("run_right")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -SPEED
		$AnimatedSprite2D.play("run_up")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = SPEED
		$AnimatedSprite2D.play("run_down")
	else:
		velocity.x = 0
		velocity.y = 0
		$AnimatedSprite2D.play("idle")
		
	
		
	move_and_slide()
