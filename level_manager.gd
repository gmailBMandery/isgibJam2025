extends Node

@export var direction_manager: PackedScene
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dm = direction_manager.instantiate()
	dm.DirectionDetected.connect(ChangeTileMap)
	add_child(dm)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func ChangeTileMap(direction: int) -> void:
	print("Change TileMap")
	print(direction)
