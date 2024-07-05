extends ScrollContainer

@export var label_theme: Theme
@export var isHours: bool

@onready var container = $VBoxContainer

var hours_in_a_day = [
    "00", "01", "02", "03", "04", "05", "06", "07", "08", "09", 
    "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", 
    "20", "21", "22", "23"]

var minutes_in_an_hour = [
    "00", "01", "02", "03", "04", "05", "06", "07", "08", "09", 
    "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", 
    "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", 
    "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", 
    "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", 
    "50", "51", "52", "53", "54", "55", "56", "57", "58", "59"]


func _ready():
	if isHours:
		for time in hours_in_a_day:
			var label_instance = Label.new()
			label_instance.text = time
			label_instance.theme = label_theme
			container.add_child(label_instance)		
	else:
		for time in minutes_in_an_hour:
			var label_instance = Label.new()
			label_instance.text = time
			label_instance.theme = label_theme
			container.add_child(label_instance)
			


