extends "res://src/levels/level_script.gd"





func _on_Play_button_up() -> void:
	GameCrashes.instance_crash_popup("game crashed").popup()

#####Menu Buttons#####
func _on_Options_button_up() -> void:
	get_tree().change_scene("res://src/levels/Options.tscn")

func _on_CrashLogs_button_up() -> void:
	get_tree().change_scene("res://src/levels/CrashLogs.tscn")

func _on_Exit_button_up() -> void:
	get_tree().quit()

