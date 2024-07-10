extends Node3D


func _ready() -> void:
	$SheepTimer.start()

func _on_sheep_timer_timeout() -> void:
	$AnimationPlayer2.play("KeyAction")
