extends Node2D

var speed = 250
var game

func _ready():
	game = get_tree().current_scene

func _process(delta):
	var pos_x = position.x
	pos_x -= speed * delta
	position.x = pos_x
	
func _on_area_body_entered(body):
	print(body.name)
	if body.name == "Player":
		body.queue_free()
		game.game_over()
		

func _on_area_score_body_entered(body):
	print("score - " + body.name)
	if body.name == "Player":
		game.count_score()
		
