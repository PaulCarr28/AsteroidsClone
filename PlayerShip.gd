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
		rotation -= rotation_speed * delta
	if Input.is_action_pressed("fire_weapon"):
		const BULLET = preload("res://bullet.tscn")
		var new_bullet = BULLET.instantiate()
		new_bullet.global_position = %BulletSpawnPoint.global_position
		new_bullet.global_rotation = %BulletSpawnPoint.global_rotation
		%BulletSpawnPoint.add_child(new_bullet)
		
	if velocity.length() > 0:
		velocity = Vector2.UP.rotated(rotation) * speed
		
	position += velocity * delta


