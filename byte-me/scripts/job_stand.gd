extends CharacterBody2D

@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D
@onready var window = $Window

var window_open = false

func _ready():
	interaction_area.interact = Callable(self, "_get_jobs")
	window.hide()

func _get_jobs():
	if not window_open:
		window.show()

func _on_window_close_requested() -> void:
	window.hide()


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/first_puzzle.tscn")
