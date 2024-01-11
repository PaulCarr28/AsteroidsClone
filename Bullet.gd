extends Area2D

signal add_score

func _physics_process(delta):
	const SPEED = 600
	const RANGE = 1500
	
	var direction = Vector2.UP.rotated(rotation)
	position += direction * SPEED * delta





func _on_body_entered(body):
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
