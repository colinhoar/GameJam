extends Node3D

@onready var pause_menu = $PauseMenu
var paused = false

func _ready() -> void:
	if Global.testNum == 1:
		$Player.translate(Vector3(31.514, 0, -41.397))
	if Global.testNum == 2:
		$Player.translate(Vector3(12.785, 0, 32.293))
	Global.testNum = 3

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		$Player/Rain.visible = !$Player/Rain.visible
		$Crosshair.visible = !$Crosshair.visible
		pauseMenu()

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
		$Player/Rain.visible = !$Player/Rain.visible
		$Crosshair.visible = !$Crosshair.visible
	else:
		pause_menu.show()
		Engine.time_scale = 0
	
	paused = !paused
