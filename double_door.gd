extends StaticBody2D


@onready var double_door: StaticBody2D = $"."






func _on_area_2d_body_entered(_body: Node2D) -> void:
		if Global.silverkey_found:
			print("You have the key to this door!")
			double_door.queue_free()
		else:
			print("This door is locked!")
			
			
