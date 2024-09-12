extends Camera2D

var speed = 300

func _process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
		
	if direction.length() > 0:
		direction = direction.normalized()

	translate(direction * speed * delta)
