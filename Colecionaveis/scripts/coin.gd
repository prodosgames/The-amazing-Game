extends Node2D


@export var value: int = 1

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		GameController.coin_collected(value)
		self.queue_free()
