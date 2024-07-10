extends Area3D

var entered = false
var first = 0 

func _on_body_entered(body: CharacterBody3D) -> void:
	if first == 0:
		entered = true
		$"..".visible = !$"..".visible

func _on_body_exited(body: CharacterBody3D) -> void:
	if first == 0:
		entered = false
		$"..".visible = !$"..".visible
		first = 1
