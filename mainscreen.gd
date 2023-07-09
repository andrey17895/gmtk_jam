extends Node2D


var current_index: int = 0;
@onready var target := $Traget as Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
		pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_released("1"):
		target = $Traget as Node2D
	if Input.is_action_just_released("2"):
		target = $Traget2 as Node2D
	if Input.is_action_just_released("3"):
		target = $Traget3 as Node2D
	if Input.is_action_just_released("4"):
		target = $Traget4 as Node2D

	
	if Input.is_action_just_pressed("mouse_click"):
		target.global_position = get_global_mouse_position()
