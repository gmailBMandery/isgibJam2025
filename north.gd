extends Area2D

signal DirectionNorth

func _ready() -> void:
	self.body_entered.connect(BodyDetected)
	
func BodyDetected(body: Node2D) -> void:
	DirectionNorth.emit(1)
