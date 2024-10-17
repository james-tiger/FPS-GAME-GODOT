extends CanvasLayer

@onready var animation_player: AnimationPlayer = $Control/AnimationPlayer
@onready var music_player: AudioStreamPlayer3D = $Control/music_player


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Scene1":
		animation_player.play("Scene2")
	elif anim_name == "Scene2":
		animation_player.play("Scene3")
	elif anim_name == "Scene3":
		music_player.stop()  # Stop any currently playing music
		music_player.play()   # Play the music for the world scene
		get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_skips_pressed() -> void:
	music_player.stop()  # Stop music when skipping
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
