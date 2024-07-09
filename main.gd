extends Node3D

@onready var pause_menu = $PauseMenu
var paused = false

func _ready() -> void:
	if Global.testNum == 1:
		$Player.translate(Vector3(32.632, 0, -42.28))
	if Global.testNum == 2:
		$Player.translate(Vector3(13.217, 0, 32.645))
	Global.testNum = 3

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		$Player/Rain.visible = !$Player/Rain.visible
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
		$Player/Rain.visible = !$Player/Rain.visible
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
