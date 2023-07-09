extends CharacterBody2D

@export var speed = 200
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

#var targets: Array[Vector2] = [Vector2(100,200), Vector2(800,100)]
#var target: Vector2

@export var targets: Array[Node2D]
var target: Node2D

func _ready():
	
	target = targets.pick_random()
	make_path()

func _physics_process(_delta: float) -> void:
	var direction = to_local(nav_agent.get_next_path_position())
	if nav_agent.distance_to_target() > 30:
		velocity = direction.normalized() * speed
		move_and_slide()
	else:
		randomize()
		target = targets.pick_random()
		make_path()
		
	

func make_path() -> void:
	nav_agent.target_position = target.global_position

func _on_timer_timeout():
	make_path()


func _on_area_2d_body_entered(body):
	hide()
	pass # Replace with function body.
