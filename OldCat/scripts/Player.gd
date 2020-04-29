extends KinematicBody2D

const MOVE_SPEED = 200
const JUMP_FORCE = 1100
const GRAVITY = 50
const MAX_FALL_SPEED = 500

var y_velo = 0


func _physics_process(delta):
	var move_dir = 0
	
	if Input.is_action_pressed("direita"):
		$AnimatedSprite.animation = "walk"
		move_dir += 1
		$AnimatedSprite.flip_h = false

	elif Input.is_action_pressed("esquerda"):
		$AnimatedSprite.animation = "walk"
		$AnimatedSprite.flip_h = true
		move_dir -= 1
		
	else:
		$AnimatedSprite.animation = "idle"
		
	
	move_and_slide(Vector2(move_dir * MOVE_SPEED, y_velo), Vector2(0,-1))
	
	y_velo += GRAVITY
		
		
		
		
