extends Area2D

signal add_score


var rotationSpeed = randi_range((PI * -2), PI * 2)

func _on_body_entered(body):
	queue_free()
	if body.has_method("destroyed_by_asteroid"):
		body.destroyed_by_asteroid()
	


func _physics_process(delta):
	%AsteroidSprite.rotation += rotationSpeed * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func take_damage():
	queue_free()
	add_score.emit()
