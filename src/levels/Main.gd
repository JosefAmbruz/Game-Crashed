extends "res://src/levels/level_script.gd"


#####Menu Buttons#####
func _on_Options_button_up() -> void:
	get_tree().change_scene("res://src/levels/Options.tscn")

func _on_CrashLogs_button_up() -> void:
	get_tree().change_scene("res://src/levels/CrashLogs.tscn")

func _on_Exit_button_up() -> void:
	get_tree().quit()

#####Crashes#####
func _on_Play_button_up() -> void:
	GameCrashes.instance_crash_popup("game crashed", "congratulations, you crashed the game for the first time. but there is another %s ways you can crash this game..." % str(int(GameCrashes.crash_count) -1), "#001").popup()

func _on_Crash002_mouse_entered() -> void:
		GameCrashes.instance_crash_popup("game crashed","error, cursor out of reach", "#002").popup()
		$Crash002.queue_free()
