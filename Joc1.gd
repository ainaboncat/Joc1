extends Node2D

var puntuacio := 0

func _ready():
	pass 

func _on_oculi_body_entered(body):
	puntuacio += 1
	$Label.text = str(puntuacio)
