extends KinematicBody2D
class_name Pushable

var velocity : Vector2 = Vector2.ZERO
var gravity : float = 80.0

func _ready():
	add_to_group("Pushable")


func _physics_process(delta):
	velocity.y = gravity
	velocity = move_and_slide(velocity, Vector2())
	#some friction
	velocity.x*=0.90
