extends RigidBody3D

# Bullet speed
var bullet_speed: float = 20.0

func _ready() -> void:
	# Set the bullet's initial linear velocity based on its forward direction
	linear_velocity = -transform.basis.z * bullet_speed

	# Optional: Set a timer to remove the bullet after a certain time
	await get_tree().create_timer(3.0).timeout  # Adjust time as needed
	queue_free()  # Remove the bullet after 3 seconds

func _on_body_entered(body: Node) -> void:
	# Handle collision (optional)
	if body.is_in_group("enemies"):  # Change to whatever group you need
		body.take_damage()  # Example function to deal damage
	queue_free()  # Remove bullet on collision
