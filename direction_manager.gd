extends Node

signal DirectionDetected(direction: int)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("North").DirectionNorth.connect(Direction)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func Direction(direction: int) -> void:
	DirectionDetected.emit(direction)
