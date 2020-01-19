extends "res://src/levels/level_script.gd"

onready var sheet = $Sheet


func _ready():
	sheet.set_text(
		str(GameCrashes.crash_list)
		)

