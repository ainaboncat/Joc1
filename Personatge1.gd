extends KinematicBody2D

var velocitat := Vector2(50,50)
var moviment := Vector2.ZERO
#var gravetat := Vector2.DOWN * 500
var direccio := Vector2.ZERO
#var salt := 500
var vides := 5

func _ready():
	rotation_degrees = 0

func _process(delta):
	moviment = Vector2.ZERO
	direccio = Vector2.ZERO

#	moviment += gravetat * delta
	if Input.is_action_pressed("ves_esquerra"):
		direccio += Vector2.LEFT
	if Input.is_action_pressed("ves_dreta"):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed("ves_dalt"):
		direccio += Vector2.UP
	if Input.is_action_pressed("ves_baix"):
		direccio += Vector2.DOWN
	
	moviment += direccio.normalized() * velocitat
#	moviment += gravetat * delta
	moviment = move_and_slide(moviment, Vector2.UP) 
