extends "res://src/levels/level_script.gd"

onready var check1 = $Opt1/CheckBox
onready var check2 = $Opt2/CheckBox
onready var check3 = $Opt3/CheckBox
onready var check4 = $Opt4/CheckBox
onready var check5 = $Opt5/CheckBox

func _ready():
	pass

func _process(delta: float) -> void:
	if check1.is_pressed() and check2.is_pressed():
		GameCrashes.instance_crash_popup("game crashed","unable to play both music and sfx at once", "#006").popup()
		check2.set_pressed(false)
