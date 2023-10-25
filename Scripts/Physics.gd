extends RigidBody2D

#Using the variable hitForce to impulse the player to the direction of the mouse click

var hitForce = 50

func _process(delta):
	#If left mouse button is pressed
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dirToMousePointer = global_position.direction_to(get_global_mouse_position())
		apply_impulse(dirToMousePointer * hitForce)
