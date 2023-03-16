extends Area2D


func _ready():
	$ColorRect.color = Color(1,1,0)


func _on_oculi_body_entered(body):
	queue_free()
