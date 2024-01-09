extends Node2D




func _on_asteroid_add_score():
	pass # Replace with function body.


func _on_asteroid_timer_timeout():
	var asteroidTypes = [preload("res://asteroid.tscn")]
	var newAsteroid = asteroidTypes[0].instantiate()
	

	
	
	
	
	
