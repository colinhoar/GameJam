extends Node3D

@onready var pause_menu = $PauseMenu
var paused = false

func _ready() -> void:
	if Global.testNum == 3:
		$Player.translate(Vector3(-1.5, 0, 6))
	Global.testNum = 1

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		$Crosshair.visible = !$Crosshair.visible
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
		$Crosshair.visible = !$Crosshair.visible
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
