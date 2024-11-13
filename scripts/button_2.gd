extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Connect the button's "pressed" signal to the quit function
	self.pressed.connect(self._on_quit_button_pressed)

# Called every frame. '_delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

# Function called when the quit button is pressed
func _on_quit_button_pressed() -> void:
	get_tree().quit()
