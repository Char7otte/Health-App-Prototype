extends OptionButton

@onready var alert_sounds_array = get_children()

func _on_item_selected(index):
	alert_sounds_array[index].play()
