extends StaticBody2D

@onready var vanish_anim = $VanishAnim

func die() -> void:
	vanish_anim.play("vanish")

func _on_vanish_anim_animation_finished(anim_name):
	SignalManager.on_cup_destroyed.emit()
	queue_free()
