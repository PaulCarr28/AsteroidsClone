extends Area2D

var speed = randf_range(50, 700)
var spriteRotationSpeed = randi_range(PI/6, PI*2)


func _physics_process(delta):
	position += speed * delta


func _on_body_entered(body):
	if body.has_method("destroyed_by_asteroid"):
		body.destroyed_by_asteroid()
	queue_free()
