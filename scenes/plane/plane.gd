extends CharacterBody2D

@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var animation_player = $AnimationPlayer
@onready var engine_sound = $EngineSound

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	fly(delta)
	move_and_slide()
	if is_on_floor():
		die()

func fly(delta: float) -> void:
	velocity.y += GameManager.GRAVITY * delta
	if Input.is_action_just_pressed("fly"):
		velocity.y = GameManager.POWER
		animation_player.play("power")
		

func die() -> void:
	set_physics_process(false)
	animated_sprite_2d.stop()
	SignalManager.on_plane_died.emit()
	engine_sound.stop()
	
