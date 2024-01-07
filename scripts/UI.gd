extends CanvasLayer

class_name UI

@onready var player1_points = $MarginContainer/Player1Points
@onready var player2_points = $MarginContainer/Player2Points

# Called when the node enters the scene tree for the first time.
func _ready():
	player1_points.text = "%d" % 0
	player2_points.text = "%d" % 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func update_player1_points(points: int):
	player2_points.text = "%d" % points
	
func update_player2_points(points: int):
	player1_points.text = "%d" % points
