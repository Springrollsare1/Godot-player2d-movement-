#this is the script!!!
extends CharacterBody2D

var speed : int
var screen_size : Vector2

func get_input(): 
	#keyboard input
	var input_dir = Input.get_vector("left", "right","up", "down") 
	velocity = input_dir * speed 
func _physics_process(_delta):
	#player movement
	get_input()
	move_and_slide()
	look_at(get_global_mouse_position())
	#limit movement to window size
	if velocity.length() != 0:
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()
		$AnimatedSprite2D.frame = 0
#this is for animated sprites ^^^
