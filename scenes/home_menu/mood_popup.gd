extends Control

@export var label: Label

var mood_dict = {
	1: "Very Bad",
	2: "Bad",
	3: "Neutral",
	4: "Good",
	5: "Very Good"
}

func _on_h_slider_value_changed(value:float):
	label.text = mood_dict[int(value)]

