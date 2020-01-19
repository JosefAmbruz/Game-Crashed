extends Node

var window_min = false

func _process(delta: float) -> void:
	if OS.is_window_minimized():
		GameCrashes.instance_crash_popup("game crashed","minimized window caused the crash", "#003").popup()
		OS.set_window_minimized(false)
