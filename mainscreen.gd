extends Node2D


var current_index: int = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("mouse_click"):
		var targets = [$Traget as Node2D, $Traget2 as Node2D, $Traget3 as Node2D, $Traget4 as Node2D]
		var target = targets[current_index]
		var gp = get_global_mouse_position()
		target.global_position = gp
		current_index = (current_index + 1) % targets.size()
