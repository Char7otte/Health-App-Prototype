extends Timer

var mood_popup_scene = preload("res://scenes/home_menu/mood_popup.tscn")

func _on_timeout():
	var mood_popup_instance = mood_popup_scene.instantiate()
	get_tree().get_root().add_child(mood_popup_instance)
