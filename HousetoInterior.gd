extends Area3D

var entered = false

func _on_body_entered(body: CharacterBody3D) -> void:
	entered = true
	$"../Prompt".visible = !$"../Prompt".visible

func _on_body_exited(body: CharacterBody3D) -> void:
	entered = false
	$"../Prompt".visible = !$"../Prompt".visible

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("door"):
			if $"../Player/Neck/Camera3D/SpotLight3D".is_visible_in_tree():
				Global.flashNum = 1
			else:
				Global.flashNum = 0
			
			if $"../Player/Neck/Camera3D/Gas".is_visible_in_tree():
				Global.gasNum = 1
			else:
				Global.gasNum = 0
			
			get_tree().change_scene_to_file("res://house_interior.tscn")
