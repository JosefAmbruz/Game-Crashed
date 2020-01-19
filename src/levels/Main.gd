extends "res://src/levels/level_script.gd"





func _on_Play_button_up() -> void:
	GameCrashes.instance_crash_popup("game crashed", "congratulations, you crashed the game for the first time. but there is another %s another ways you can crash this game..." % str(int(GameCrashes.crash_count) -1), "#001").popup()

#####Menu Buttons#####
func _on_Options_button_up() -> void:
	get_tree().change_scene("res://src/levels/Options.tscn")

func _on_CrashLogs_button_up() -> void:
	get_tree().change_scene("res://src/levels/CrashLogs.tscn")

func _on_Exit_button_up() -> void:
	get_tree().quit()

