extends Node2D

var game
var speed = 250

func _ready():
	game = get_tree().current_scene

func _process(delta):
	
	if game.state == game.gamestate.PLAY:
		var pos_x = position.x
		pos_x -= speed * delta
		position.x = pos_x
		
	if position.x < -100:
		queue_free()
		
	

func _on_area_body_entered(body):
	if game.state == game.gamestate.PLAY:
		if body.name == "player":
			game.game_over()


func _on_area_score_body_entered(body):
	if game.state == game.gamestate.PLAY:
		if body.name == "player":
			game.count_score()
