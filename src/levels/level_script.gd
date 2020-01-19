extends Node

var crash_list = GameCrashes.crash_list

export var previous_scene: PackedScene

func _ready():
	pass

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("back"):
		get_tree().change_scene_to(previous_scene)

