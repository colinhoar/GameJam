extends Interactable

var pickupable = 0 #0 = allowed to pickup, 1 = not allowed

func _on_interacted(body: Variant) -> void:
	if pickupable == 0:
		$"..".hide()
		self.translate(Vector3(0, 1000, 0))
		$"../../Player/Neck/Camera3D/Gas".show()
		pickupable = 1
