extends Node

@onready var alert_sounds = $AlertSounds.get_children()

func play_alert_sound(array_index):
	alert_sounds[array_index].play()
