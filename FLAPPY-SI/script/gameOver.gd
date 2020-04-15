extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/best_score.text = "BEST = " + str(save_score.best_score)
	$CanvasLayer/last_score.text = "LAST = " + str(save_score.last_score)

func _on_btn_menu_pressed():
	get_tree().change_scene("res://scenes/menu.tscn")


func _on_btn_restart_pressed():
	get_tree().change_scene("res://scenes/game.tscn")
