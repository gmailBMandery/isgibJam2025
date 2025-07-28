extends CharacterBody2D


const SPEED = 5000
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var movement_vector = get_movement_vector().normalized()
	#velocity = movement_vector * 200
	#print(movement_vector)
	
	if movement_vector != Vector2.ZERO:
		#velocity = velocity.move_toward(movement_vector*SPEED, delta)
		velocity = movement_vector * SPEED *  delta
	else:
		#velocity = velocity.move_toward(Vector2.ZERO, 1000 * delta)
		#animated_sprite_2d.stop()
		velocity = Vector2.ZERO
#
	move_and_slide()



func get_movement_vector():
	var movement_vector = Vector2.ZERO
	#animated_sprite_2d.play("default")
	#get our movement and not let the player move diagonally
	var x_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
	var y_movement = Input.get_action_strength("move_down") - Input.get_action_strength("move_up") #Down is positive in the 2d environment
	if x_movement < 0:
		$Sprite2D.flip_h = true
		#animated_sprite_2d.play("default")
		#animated_sprite_2d.flip_h = true
	elif x_movement > 0:
		#animated_sprite_2d.play("default")
		#animated_sprite_2d.flip_h = false
		$Sprite2D.flip_h = false
		
	return Vector2(x_movement,y_movement)
