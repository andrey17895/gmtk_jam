extends CharacterBody2D

@export var speed = 10
@export var target :Node2D
@onready var nav_agent := $NavigationAgent2D as NavigationAgent2D

func _ready():
	make_path()

func _physics_process(_delta: float) -> void:
	var direction = to_local(nav_agent.get_next_path_position())
	velocity = direction.normalized() * speed
	move_and_slide()

func make_path() -> void:
	nav_agent.target_position = target.global_position

func _on_timer_timeout():
	make_path()
