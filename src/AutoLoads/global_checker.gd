extends Node

var window_min = false
var init_win_size
var init_win_position
var click_count = 0


func _ready() -> void:
	init_win_size = OS.get_window_size()
	init_win_position = OS.get_window_position()
func _process(delta: float) -> void:
	#003
	if OS.is_window_minimized():
		if GameCrashes.crash_list["#003"] == false:
			GameCrashes.instance_crash_popup("game crashed","minimized window caused the crash", "#003").popup()
#			OS.set_window_minimized(false)
	#004
	if OS.get_window_size() > init_win_size:
		if GameCrashes.crash_list["#004"] == false:
			GameCrashes.instance_crash_popup("game crashed","this resolution is not supported by your graphics card", "#004").popup()
#			OS.set_window_size(init_win_size)
	#005
	if OS.get_window_position().x < -600:
		if GameCrashes.crash_list["#005"] == false:
			GameCrashes.instance_crash_popup("game crashed","problem with rendering game window occured", "#005").popup()
#			OS.set_window_position(init_win_position)
	#007
	if Input.is_action_just_pressed("mouse_left"):
		click_count += 1
	if click_count == 20:
		if GameCrashes.crash_list["#007"] == false:
			GameCrashes.instance_crash_popup("game crashed","mouse button was overloaded!", "#007").popup()
			click_count += 1
