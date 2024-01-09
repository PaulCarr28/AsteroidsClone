extends Area2D

signal add_score

func _physics_process(delta):
	const SPEED = 600
	const RANGE = 1500
	
	var direction = Vector2.UP.rotated(rotation)
	position += direction * SPEED * delta




func _on_area_entered(area):
	queue_free()
	if area.has_method("take_damage"):
		area.take_damage()
		add_score.emit()
