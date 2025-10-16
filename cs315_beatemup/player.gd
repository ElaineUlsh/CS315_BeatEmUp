extends CharacterBody2D

@export var speed = 100

@onready var anim_tree = $AnimationTree

func _process(delta: float) -> void:
	var dir = Input.get_vector("left", "right", "up", "down")
	
	self.velocity = dir * speed
	
	if velocity.length() > 0.01:
		anim_tree['parameters/conditions/walk'] = true
		anim_tree['parameters/conditions/idle'] = false
	else:
		anim_tree['parameters/conditions/walk'] = false
		anim_tree['parameters/conditions/idle'] = true
	
	move_and_slide()
	
	pass

## stopped video at 26:50
