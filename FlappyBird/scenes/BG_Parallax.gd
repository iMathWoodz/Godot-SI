extends ParallaxBackground

export var speed = 0
var offset_x = 0
var game 


func _ready():
	game = get_tree().current_scene

func _process(delta):
	if game.state == game.gamestate.PLAY:
		offset_x -= speed * delta
		scroll_offset = Vector2(offset_x,0)
