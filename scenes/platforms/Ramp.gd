extends StaticBody2D

# create a collision polygon based on the curve
func _ready():
	$CollisionPolygon2D.polygon = $Path2D.curve.tessellate()
