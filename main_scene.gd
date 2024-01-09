extends Node2D




func _on_asteroid_add_score():
	pass # Replace with function body.


func _on_asteroid_timer_timeout():
	var asteroidTypes = [preload("res://asteroid.tscn")]
	var newAsteroid = asteroidTypes[0].instantiate()
	
	
	%AsteroidSpawnPosition.progress_ratio = randf()
	newAsteroid.position = %AsteroidSpawnPosition.position
	
	var direction = %AsteroidSpawnPosition.rotation + PI / 2
	
	direction += randf_range(PI/-4, PI/4)
	
	
