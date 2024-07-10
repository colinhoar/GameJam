extends Node3D


func _ready() -> void:
	$CowTimer.start()

func _on_cow_timer_timeout() -> void:
	$AnimationPlayer2.play("Key_001Action")
