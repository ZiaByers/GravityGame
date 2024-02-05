extends Node2D

var grav_switches = 4
var switch_label = "Gravity Switches Remaining: %s"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ready():
	$GravSwitchCounter.text = switch_label % grav_switches

func _process(_delta):
	$GravSwitchCounter.position = $Player.position + Vector2(550,-720)

func _on_gravity_field_grav_change(input):
	var direction: Vector2
	if (grav_switches > 0):
		match input:
			"ui_left": 
				direction = Vector2(-1, 0)
			"ui_right": 
				direction = Vector2(1, 0)
			"ui_up": 
				direction = Vector2(0, -1)
			"ui_down": 
				direction = Vector2(0, 1)
		grav_switches -= 1
		$GravSwitchCounter.text = switch_label % grav_switches
	
	$"Gravity Field".gravity_direction = direction


func _on_goal_you_win():
	grav_switches = 0
	var winner_label = Label.new()
	winner_label.text = "You win!"
	winner_label.position = $Player.position
	winner_label.scale = Vector2(5,5)
	add_child(winner_label)
