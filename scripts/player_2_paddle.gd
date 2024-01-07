extends RigidBody2D

@export var speed = 500
@export var paddle_speed = 35000
@export var ball = Ball

func _physics_process(delta):
		human_player()
# Setup to implement AI player
func human_player():
	var movement = Vector2.ZERO
	if Input.is_action_pressed("up_p2"):
		movement = Vector2.UP
	elif Input.is_action_pressed("down_p2"):
		movement = Vector2.DOWN
		
	linear_velocity = movement * speed


