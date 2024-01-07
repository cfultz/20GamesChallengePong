extends Node2D

var player1_points = 0
var player2_points = 0

@onready var player1_paddle = $"Player 1 Paddle"
@onready var player2_paddle = $"Player 2 Paddle"
@onready var ball = $Ball as Ball
@onready var ui = $Ui as UI

func _on_playe1_scored():
	player1_points += 1
	ui.update_player1_points(player1_points)
	reset_game_state()
	
func _on_player2_scored():
	player2_points += 1
	ui.update_player2_points(player2_points)
	reset_game_state()

func reset_game_state():
	player1_paddle.global_position.y = 0
	player2_paddle.global_position.y = 0
	ball.global_position = Vector2.ZERO
	ball.velocity = Vector2.ZERO
	player1_paddle.linear_velocity = Vector2.ZERO
	player2_paddle.linear_velocity = Vector2.ZERO
	ball.start_ball()
