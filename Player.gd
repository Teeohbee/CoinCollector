extends CharacterBody2D

func _physics_process(delta):
	velocity = Vector2.ZERO
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
	
	velocity = velocity * 50
	
	move_and_slide()