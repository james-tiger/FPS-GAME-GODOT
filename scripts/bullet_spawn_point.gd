extends Node3D

var velocity: Vector3

func _process(delta):
	# Move the bullet in the specified direction
	global_transform.origin += velocity * delta
