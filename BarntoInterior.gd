extends Area3D

var entered = false

func _on_body_entered(body: CharacterBody3D) -> void:
	entered = true
	$"../Prompt2".visible = !$"../Prompt2".visible

func _on_body_exited(body: CharacterBody3D) -> void:
	entered = false
	$"../Prompt2".visible = !$"../Prompt2".visible

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("door"):
			if $"../Player/Neck/Camera3D/SpotLight3D".is_visible_in_tree():
				Global.flashNum = 1
			else:
				Global.flashNum = 0
			get_tree().change_scene_to_file("res://barn_interior_scene.tscn")
