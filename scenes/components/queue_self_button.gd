extends Button

@export var root_node: Node

func _on_pressed():
	root_node.queue_free()
