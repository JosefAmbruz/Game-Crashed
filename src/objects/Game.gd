extends "res://src/objects/DragScript.gd"


func _on_Game_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	
	if event is InputEventMouseButton:
		if event.is_pressed():
			dragMouse = true
		else:
			dragMouse = false


func _on_CollisionChecker_area_entered(area: Area2D) -> void:
	#008
	if GameCrashes.crash_list["008"] == false:
		if area.is_in_group("Title"):
			yield(get_tree().create_timer(1), "timeout")
			GameCrashes.instance_crash_popup("game crashed", "your wish is my command", "#008").popup()
