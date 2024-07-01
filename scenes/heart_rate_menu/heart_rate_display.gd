extends Label

var rng = RandomNumberGenerator.new()


func set_random_heart_rate():
	var random_heart_rate_number = rng.randi_range(40, 80)
	text = str(random_heart_rate_number)
