extends Node2D

func _ready():
	$music.play()
	
	$CanvasLayer/best_score.text = "LAST = " + str(save_score.last_score) 
	$CanvasLayer/last_score.text = "BEST = " + str(save_score.best_score) 
	
	
	
func _on_btn_restart_pressed():

	get_tree().change_scene("res://scenes/Game.tscn")


func _on_btn_menu_pressed():

	get_tree().change_scene("res://scenes/Menu.tscn")
