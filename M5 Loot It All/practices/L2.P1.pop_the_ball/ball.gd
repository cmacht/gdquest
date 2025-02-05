extends Area2D


func _ready() -> void:
	area_entered.connect(_on_area_entered)

func _on_area_entered(this_area_entered: Area2D) -> void:
	queue_free()
