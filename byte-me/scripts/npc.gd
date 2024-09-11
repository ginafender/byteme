extends CharacterBody2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var sprite = $AnimatedSprite2D

const lines: Array[String] = [
	"Hey there!"
]


func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	sprite.play("idle")
	
#func _on_interact():
	#Dial
