extends Node2D

# the maximum number of gravity switches for the level
var grav_switches = 4
var switch_label = "Gravity Switches Remaining: %s"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	$GravSwitchCounter.text = switch_label % grav_switches

func _process(_delta):
	# position the label relative to the player
	$GravSwitchCounter.position = $Player.position + Vector2(550,-720)
	
func _on_gravity_field_grav_change(input):
	var direction: Vector2
	# if there are remaining switches, switch gravity direction and decrement the switch counter
	if (grav_switches > 0):
		match input:
			"left": 
				direction = Vector2(-1, 0)
			"right": 
				direction = Vector2(1, 0)
			"up": 
				direction = Vector2(0, -1)
			"down": 
				direction = Vector2(0, 1)
		#grav_switches -= 1
		$GravSwitchCounter.text = switch_label % grav_switches
	
	$"Gravity Field".gravity_direction = direction

# when player hits the goal, prevent further movement, and create a "you win" label
func _on_goal_you_win():
	grav_switches = 0
	var winner_label = Label.new()
	winner_label.text = "You win!"
	winner_label.position = $Player.position + Vector2(0, -100)
	winner_label.scale = Vector2(5,5)
	add_child(winner_label)
