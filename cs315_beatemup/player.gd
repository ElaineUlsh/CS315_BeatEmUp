extends CharacterBody2D

@export var speed = 100

func _process(delta: float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	
	self.velocity = dir * speed
	
	move_and_slide()
	
	pass

## stopped video at 11:51
