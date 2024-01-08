extends Area2D


func _physics_process(delta):
	const SPEED = 600
	const RANGE = 1500
	
	var direction = Vector2.UP.rotated(rotation)
	position += direction * SPEED * delta


func _on_body_entered(body):
	if body.has_method("take_damage:"):
		body.take_damage()
	queue_free()
