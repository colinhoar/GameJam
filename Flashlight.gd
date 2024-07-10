extends SpotLight3D

var available = 1 #0 = can't click, 1 = can click

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$FlashlightTimer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("flashlight"):
		if available == 1:
			$AudioStreamPlayer.play()
			self.visible = !self.visible
			available = 0


func _on_flashlight_timer_timeout() -> void:
	available = 1
