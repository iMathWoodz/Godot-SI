extends Node2D

var speed = 250

func _process(delta):
	var pos_x = position.x
	pos_x -= speed * delta
	position.x = pos_x
	
