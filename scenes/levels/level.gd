extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$"Gravity Field".gravity_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
