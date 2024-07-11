extends Interactable


func _on_interacted(body: Variant) -> void:
	if $"../../Player/Neck/Camera3D/Gas".is_visible_in_tree():
		$"../Generator".play()
		$"../OmniLight3D".show()
		$"../../Player/Neck/Camera3D/Gas".hide()
		$"../../Gas2".show()
