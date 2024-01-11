extends Node2D




func _on_asteroid_add_score():
	pass # Replace with function body.


func _on_asteroid_timer_timeout():
	var asteroidTypes = [preload("res://asteroid.tscn")]
	var newAsteroid = asteroidTypes[0].instantiate()
	
	
	%AsteroidSpawnPosition.progress_ratio = randf()
	newAsteroid.position = %AsteroidSpawnPosition.position
	
	var direction = %AsteroidSpawnPosition.rotation - (PI / 2)
	direction += randf_range(-PI / 4, PI / 4)	
	newAsteroid.rotation = direction
	
	var velocity = Vector2(randf_range(100, 300), 0)
	newAsteroid.linear_velocity = velocity.rotated(direction)
	
	add_child(newAsteroid)
	
