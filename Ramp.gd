extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionPolygon2D.polygon = $Path2D.curve.tessellate()
