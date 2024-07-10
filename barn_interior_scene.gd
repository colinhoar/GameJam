extends Node3D

@onready var pause_menu = $PauseMenu
var paused = false

func _ready() -> void:
	Global.testNum = 2

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		$Crosshair.hide()
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
		$Crosshair.show()
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
