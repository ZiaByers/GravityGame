extends RigidBody2D

# keep the player RigidBody from enetering sleep mode
func _process(_delta):
	sleeping = false
