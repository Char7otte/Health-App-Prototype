extends BaseButton

@export var new_scene: PackedScene

func _on_pressed():
	var new_scene_instance = new_scene.instantiate()
	get_tree().root.add_child(new_scene_instance)
