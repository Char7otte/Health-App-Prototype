extends Node

@onready var alert_sounds = $AlertSounds.get_children()

var current_alarm_index: int = 0

func set_alarm_sound(index):
	current_alarm_index = index
	play_alert_sound()

func play_alert_sound():
	alert_sounds[current_alarm_index].play()
