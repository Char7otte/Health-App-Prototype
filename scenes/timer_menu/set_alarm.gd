extends Control

@export var hour_label: Label
@export var minute_label: Label

func _on_set_alarm_button_pressed():
	var hour = int(hour_label.text)
	var minute = int(minute_label.text)

	ClockAlarmManager.set_alarm(hour, minute)
