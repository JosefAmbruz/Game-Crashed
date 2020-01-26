extends "res://src/levels/level_script.gd"

onready var check1 = $Opt1/HSlider
#onready var check2 = $Opt2/CheckBox
#onready var check3 = $Opt3/CheckBox
#onready var check4 = $Opt4/CheckBox
#onready var check5 = $Opt5/CheckBox

func _ready():
	pass

func _process(delta: float) -> void:
	#006
	if GameCrashes.crash_list["#006"] == false:
		if check1.get_value() > 100:
			GameCrashes.instance_crash_popup("game crashed","your ears feel pain", "#006").popup()
