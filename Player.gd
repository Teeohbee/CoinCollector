extends CharacterBody2D

var move_speed : int = 200

func _physics_process(_delta):
	velocity = Vector2.ZERO
	
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += 1
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= 1
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += 1
	
	velocity = velocity * move_speed
	
	move_and_slide()
