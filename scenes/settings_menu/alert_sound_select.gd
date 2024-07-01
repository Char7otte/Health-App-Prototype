extends OptionButton

func _on_item_selected(index):
	AudioManager.play_alert_sound(index)
