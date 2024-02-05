extends Area2D

signal you_win


func _on_body_entered(_body):
	you_win.emit()
