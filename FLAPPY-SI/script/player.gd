 extends RigidBody2D

var is_live = true

func _ready():
	$AnimatedSprite.play("fly")
	linear_velocity = Vector2(0,0)
	
func _process(delta):
	
	if is_live:
		if linear_velocity.y == 0:
			$AnimatedSprite.play("idle")
		elif linear_velocity.y < -0.1:
			$AnimatedSprite.play("fly")
		elif linear_velocity.y > 0.1:
			$AnimatedSprite.play("fly")


func flap():
	linear_velocity = Vector2(0, -350)


func _input(event):
	
	if is_live:
		if event.is_action_pressed("touch"):
			flap()



