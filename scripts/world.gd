extends Node3D

# Expose the player node in the editor
@export var player : Node3D

# Called every physics frame (use for physics-related updates)
func _physics_process(delta: float) -> void:
	if player:
		# Update all enemies in the "Enemy" group with the player's location
		get_tree().call_group("Enemy", "update_target_location", player.global_transform.origin)
