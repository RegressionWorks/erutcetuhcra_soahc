extends Area2D

func _ready():
	connect("body_entered", self, "on_body_entered")

func on_body_entered(body):
	if body is Player:
		queue_free()
