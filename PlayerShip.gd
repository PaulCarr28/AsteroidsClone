extends CharacterBody2D

@export var speed = 400
@export var rotation_speed = PI

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("move_forwards"):
		velocity.x += 1
	if Input.is_action_pressed("rotate_clock"):
		rotation += rotation_speed * delta
	if Input.is_action_pressed("rotate_counter_clock"):
		rotation -= rotation_speed 
		
	if velocity.length() > 0:
		velocity = Vector2.UP.rotated(rotation) * speed
		
	position += velocity * delta


