extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	gravity_space_override = 4
	print(gravity)
	
func _process(_delta):
	print(gravity)
