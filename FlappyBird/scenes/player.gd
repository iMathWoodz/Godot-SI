extends RigidBody2D

var is_live = true

func _ready():
	$AnimatedSprite.play("fly")
	linear_velocity = Vector2(0,0)
	
func _process(delta):
	
	if is_live:
		if linear_velocity.y == 0:
			$AnimatedSprite.play("fly")
		elif linear_velocity.y < -0.1:
			$AnimatedSprite.play("shoot")
			#$flap_audio.play()
		elif linear_velocity.y > 0.1:
			$AnimatedSprite.play("shoot")
			#$flap_audio.play()

func flap():
	linear_velocity = Vector2(0, -450)
	$flap_audio.play()

func _input(event):
	
	if is_live:
		if event.is_action_pressed("touch"):
			flap()

func die():
	if is_live:
		is_live = false
		$AnimatedSprite.play("die")
		$die_audio.play()
		linear_velocity = Vector2(0, -350)
		
	

func _on_die_audio_finished():
	get_tree().change_scene("res://scenes/GameOver.tscn")
