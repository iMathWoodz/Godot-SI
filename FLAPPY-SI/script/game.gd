extends Node2D


var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Label.text = str(score)

func _on_Area2D_body_entered(body):
	print(body.name)
	
func count_score():	
	score += 1
	$CanvasLayer/Label.text = str(score)	

func game_over():
	save_score.last_score = score
	
	if score > save_score.best_score:
		save_score.best_score = score
		
	get_tree().change_scene("res://scenes/gameOver.tscn")
	
	







