extends Node2D


var current_index: int = 0;
var index = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
		pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if not $pacman.visible:
		$Victory.visible = true
		$Button.visible = true
		$Button.disabled = false
	
	
	if Input.is_action_just_pressed("mouse_click"):
		var targets = [$Traget as Node2D, $Traget2 as Node2D, $Traget3 as Node2D, $Traget4 as Node2D]
		var target = targets[index]
		target.global_position = get_global_mouse_position()
		index = (index + 1) % targets.size()


func _on_button_pressed() -> void:
	$pacman.visible = true
	$pacman.global_position = Vector2(625, 850)
	$ghost.global_position = Vector2(450, 475)
	$ghost2.global_position = Vector2(475, 475)
	$ghost3.global_position = Vector2(500, 475)
	$ghost4.global_position = Vector2(525, 475)
	$Victory.visible = false
	$Button.visible = false
	$Button.disabled = true
