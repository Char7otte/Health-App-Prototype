extends Label

func _process(_delta):
	text = Time.get_time_string_from_system()
