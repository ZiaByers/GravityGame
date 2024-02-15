extends Area2D

signal grav_change(direction)

# send signal when a direction is pressed
func grav_input():
	for x in ["left", "right", "down", "up"]:
		if Input.is_action_just_pressed(x):
			grav_change.emit(x)
		

func _ready():
	gravity_space_override = SPACE_OVERRIDE_REPLACE
	

func _process(_delta):
	grav_input()
