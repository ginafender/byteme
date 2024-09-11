extends CharacterBody2D

@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D
@onready var window = $Window

func _ready():
	interaction_area.interact = Callable(self, "_get_jobs")
	window.hide()

func _get_jobs():
	window.show()
