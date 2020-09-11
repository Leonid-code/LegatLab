extends Node2D

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group('player'):
		$roof.hide()

func _on_Area2D_body_exited(body):
	if body.is_in_group('player'):
		$roof.show()
