extends KinematicBody2D

var velocitat := 100
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 500
var direccio := Vector2.ZERO
var salt := 500

func _ready():
	position = Vector2(0,0)
	rotation_degrees = 0

func _process(delta):
	moviment.x = 0
	direccio.x = 0
	
	moviment += gravetat * delta
	if Input.is_action_pressed("ves_esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_just_pressed("ves_dalt") and is_on_floor():
		moviment.y = -salt
	
	moviment += direccio.normalized() * velocitat
	moviment += gravetat * delta
	moviment = move_and_slide(moviment, Vector2.UP) 
