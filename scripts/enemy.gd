extends CharacterBody3D

@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D

var speed = 5.0
@export var player_target : CharacterBody3D

func _physics_process(delta):
	if player_target:
		# Set the target to the player's position
		navigation_agent_3d.set_target_position(player_target.global_transform.origin)
		
		# Check if navigation has a valid path
		if not navigation_agent_3d.is_navigation_finished():
			var next_position = navigation_agent_3d.get_next_path_position()
			var direction = (next_position - global_transform.origin).normalized()
			# Use the built-in velocity property
			velocity = direction * speed

			# Debug print to see the calculated direction and velocity
			print("Next position: ", next_position)
			print("Velocity: ", velocity)
		else:
			print("Navigation finished or no valid path")
	

	move_and_slide()
