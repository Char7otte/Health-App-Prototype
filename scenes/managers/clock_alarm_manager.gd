extends Node

var alarm_popup_scene = preload("res://scenes/timer_menu/alarm_popup.tscn")

var alarms = []

func set_alarm(hour, minute):
	alarms.append(Vector2(hour, minute))
	print(alarms)

func _process(_delta):
	var time_dict = Time.get_time_dict_from_system()
	for alarm in alarms:
		if alarm.x == time_dict["hour"] and alarm.y == time_dict["minute"]:
			print("Alarm!")
			AudioManager.play_alert_sound()
			instantiate_alarm_popup()
			alarms.erase(alarm)
			break

func instantiate_alarm_popup():
	var alarm_popup_instance = alarm_popup_scene.instantiate()
	get_tree().get_root().add_child(alarm_popup_instance)
