extends RigidBody2D

@export var speed = 500

func _physics_process(delta):
	var movement = Vector2.ZERO
	if Input.is_action_pressed("up_p1"):
		movement = Vector2.UP
	elif Input.is_action_pressed("down_p1"):
		movement = Vector2.DOWN
		
	linear_velocity = movement * speed

