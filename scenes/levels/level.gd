extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass#$"Gravity Field".gravity_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")


func _on_gravity_field_grav_change(input):
	var direction: Vector2
	match input:
		"ui_left": 
			direction = Vector2(-1, 0)
		"ui_right": 
			direction = Vector2(1, 0)
		"ui_up": 
			direction = Vector2(0, -1)
		"ui_down": 
			direction = Vector2(0, 1)
	
	$"Gravity Field".gravity_direction = direction
