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






