extends Node

var crash_list = {
	#holding values of crashes
	"#001" : false,
	"#002" : false,
	"#003" : false,
	"#004" : false,
	"#005" : false,
	"#006" : false,
	"#007" : false,
	"#008" : false,
	"#009" : false,
	"#010" : false,
	"#011" : false,
	"#012" : false,
	"#013" : false,
	"#014" : false,
	"#015" : false,
	"#016" : false,
	"#017" : false,
	"#018" : false,
	"#019" : false,
	"#020" : false,		#20
}

var crash_count = len(crash_list.keys())


func instance_crash_popup(title = "game crashed", text = "game crashed", id = "#000") -> AcceptDialog:
	var popup = AcceptDialog.new()
	popup.set_position(Vector2(0, 25))
	popup.set_title(title.to_upper())
	popup.set_text(text.to_upper())
	popup.set_resizable(true)
	popup.set_autowrap(true)
	popup.set_custom_minimum_size(Vector2(160,0))
	get_parent().add_child(popup)
	SfxPlayer.play()
	crash_list[id] = true
	return popup
	
func _ready():
	pass
