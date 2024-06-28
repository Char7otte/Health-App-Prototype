extends HBoxContainer

@export var system_time_display_label: Label

func _process(delta):
	var system_time = Time.get_time_string_from_system()
	system_time_display_label.text = system_time
