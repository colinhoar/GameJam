extends Camera3D
@onready var player = $"../../../.."


func _process(delta: float) -> void:
	position = Vector3(player.position.x + -.5, player.position.y + .3, player.position.z + .75)
