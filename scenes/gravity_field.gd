extends Area2D

signal grav_change(direction)

func grav_input():
	for x in ["ui_left", "ui_right", "ui_down", "ui_up"]:
		if Input.is_action_just_pressed(x):
			grav_change.emit(x)
		
		

# Called when the node enters the scene tree for the first time.
func _ready():
	gravity = 1860
	gravity_space_override = SPACE_OVERRIDE_REPLACE
	

func _process(_delta):
	grav_input()
