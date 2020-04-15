extends Node2D

onready var pipe = preload("res://scenes/pipes.tscn")
var start_position_x = 500

func _ready():
	randomize()


func _on_Timer_timeout():
	create_pipe()
	

func create_pipe():
	var clone_pipe = pipe.instance()
	clone_pipe.position = Vector2(start_position_x, rand_range(-220,106))
	add_child(clone_pipe)
