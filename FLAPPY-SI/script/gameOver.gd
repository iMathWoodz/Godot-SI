extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_btn_menu_pressed():
	get_tree().change_scene("res://scenes/menu.tscn")


func _on_btn_restart_pressed():
	get_tree().change_scene("res://scenes/game.tscn")
