extends Area2D

func _ready():
	$ColorRect.color = Color(0.85,0,1)

func _on_oculi_body_entered(body):
	queue_free()
