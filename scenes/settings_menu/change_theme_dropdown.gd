extends OptionButton

@export var default_theme: Theme

func _on_item_selected(index):
	default_theme.get_theme
