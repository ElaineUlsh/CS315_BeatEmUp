extends CharacterBody2D

var health = 5
@onready var health_bar = $ProgressBar

func hit(hit_dir):
	self.velocity = hit_dir * 100
	health -= 1
	health_bar.value = health
	
	if health <= 0:
		self.queue_free()

func _process(delta: float) -> void:
	velocity *= 0.9
	move_and_slide()
