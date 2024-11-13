extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Connect the button's "pressed" signal to the function using a Callable
	self.pressed.connect(self._on_button_pressed)

# Called every frame. '_delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

# Function called when the button is pressed
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://node_3d.tscn")
