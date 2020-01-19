extends Node

var window_min = false
var init_win_size
var completed = false
func _ready() -> void:
	init_win_size = OS.get_window_size()

func _process(delta: float) -> void:
	#003
	if OS.is_window_minimized():
		GameCrashes.instance_crash_popup("game crashed","minimized window caused the crash", "#003").popup()
		OS.set_window_minimized(false)
	#004
	if OS.get_window_size() > init_win_size and completed == false :
		GameCrashes.instance_crash_popup("game crashed","this resolution is not supported by your graphics card", "#004").popup()
		OS.set_window_size(init_win_size)
		completed = true
		
