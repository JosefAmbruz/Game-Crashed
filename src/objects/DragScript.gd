extends Area2D

var dragMouse = false

func _process(delta: float) -> void:
	if dragMouse:
		set_position(get_viewport().get_mouse_position())
		
