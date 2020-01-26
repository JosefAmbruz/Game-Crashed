extends Node2D

var help = [
	"Go to crash logs to see what crashes you did!",
	"Click not to play",
	"Be careful where you put your cursor",
	"Don't be minimalist",
	"The window is perfectly sized, don't you think?",
	"Half of window is good enough",
	"Is there any music? And what about sfx? And both?",
	"Your mouse can be easily overloaded",
	"008",
]

var screen_size

func _ready() -> void:
	screen_size = get_viewport_rect()


func _process(delta: float) -> void:
	var mouse_position = get_viewport().get_mouse_position()
	print(str(screen_size) + " " + str(mouse_position.x))
	#002
	if mouse_position.x > 255 or mouse_position.x < 1 or mouse_position.y > 149 or mouse_position.y < 1:
		if GameCrashes.crash_list["#002"] == false:
			GameCrashes.instance_crash_popup("game crashed","error, cursor out of reach", "#002").popup()

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
#001
func _on_Play_button_up() -> void:
	if GameCrashes.crash_list["#001"] == false:
		GameCrashes.instance_crash_popup("game crashed", "congratulations, you crashed the game. go to crash logs to see more info", "#001").popup()





