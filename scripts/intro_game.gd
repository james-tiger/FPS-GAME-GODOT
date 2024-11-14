extends CanvasLayer

@onready var animation_player: AnimationPlayer = $Control/AnimationPlayer


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Scene1":
		animation_player.play("Scene2")
	elif anim_name == "Scene2":
		animation_player.play("Scene3")
	elif anim_name == "Scene3":
		get_tree().change_scene_to_file("res://menu.tscn")

func _on_skips_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
