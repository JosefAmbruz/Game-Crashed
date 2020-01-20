extends "res://src/levels/level_script.gd"

var help = [
	"Go to crash logs to see what crashes you did!",
	"Click not to play",
	"Be careful where you put your cursor",
	"Don't be minimalist",
	"The window is perfectly sized, don't you think?",
	"Half of window is good enough",
	"Is there any music? And what about sfx? And both?",
	"Your mouse can be easily overloaded"
]




func _process(delta: float) -> void:
	if Input.is_action_just_pressed("back"):
		get_tree().quit()


#####Menu Buttons#####
func _on_Options_button_up() -> void:
	get_tree().change_scene("res://src/levels/Options.tscn")

func _on_CrashLogs_button_up() -> void:
	get_tree().change_scene("res://src/levels/CrashLogs.tscn")

func _on_Exit_button_up() -> void:
	get_tree().quit()

func _on_Help_pressed() -> void:
	randomize()
	var random_help = help[randi()%help.size()]
	print(random_help)
	$Help/Text.set_text(random_help)
	

#####Crashes#####
func _on_Play_button_up() -> void:
	GameCrashes.instance_crash_popup("game crashed", "congratulations, you crashed the game. go to crash logs to see more info", "#001").popup()

func _on_Crash002_mouse_entered() -> void:
		GameCrashes.instance_crash_popup("game crashed","error, cursor out of reach", "#002").popup()
		$Crash002.queue_free()






