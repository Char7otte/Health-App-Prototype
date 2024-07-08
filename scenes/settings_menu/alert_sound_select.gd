extends OptionButton

func _on_item_selected(index):
	AudioManager.set_alarm_sound(index)
