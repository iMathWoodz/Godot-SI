extends Node2D

var score = 0
enum gamestate {PLAY, STOP}

var state = gamestate.PLAY


func _ready():
	$CanvasLayer/Label.text = str(score)
	state = gamestate.PLAY
	$music_game.play()
	
func count_score():
	score += 1
	$music_score.play()
	$CanvasLayer/Label.text = str(score)

	
func game_over():
	state = gamestate.STOP
	
	save_score.last_score = score
	
	if score > save_score.best_score:
		save_score.best_score = score
	
	
	$spawn_pipes/Timer.stop()
	$music_game.stop()
	$player.die()
