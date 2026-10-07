extends CharacterBody2D

const LEFT_LIMIT := 150.0
const RIGHT_LIMIT := 810.0

func _physics_process(_delta: float) -> void:
	var mouse_position := get_global_mouse_position()
	position.x = clamp(mouse_position.x, LEFT_LIMIT, RIGHT_LIMIT)
