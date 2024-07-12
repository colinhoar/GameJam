extends Area3D

var entered = false
var first = 0 

func _on_body_entered(body: CharacterBody3D) -> void:
	if first == 0:
		entered = true
		$"../Prompt".show()


func _on_body_exited(body: CharacterBody3D) -> void:
	if first == 0:
		entered = false
		$"../Prompt".hide()


func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("door"):
			if $"../../Player/Neck/Camera3D/Gas".is_visible_in_tree():
				$"../Generator".play()
				$"../OmniLight3D".show()
				$"../../Player/Neck/Camera3D/Gas".hide()
				$"../../Gas2".show()
				$"../Prompt".hide()
				Global.barnGenNum = 1
				first = 1
			else:
				Dialogic.start("timeline3")
