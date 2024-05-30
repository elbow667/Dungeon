extends Area2D


@onready var sprite_2d: Sprite2D = $Sprite2D



func _on_body_entered(_body: Node2D) -> void:
	if Global.silverkey_found == false:
		Global.silverkey_found = true
		sprite_2d.queue_free()
		print("You found the silver key!")
