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
			get_tree().change_scene_to_file("res://node_3d.tscn")
