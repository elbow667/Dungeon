extends CharacterBody2D

@onready var priest_sprite: AnimatedSprite2D = $AnimatedSprite2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0
@export var speed: int = 130


# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		#velocity.y += gravity * delta
		velocity.y += delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var moveDirection = Input.get_vector("left", "right", "up", "down")
	velocity = moveDirection * speed
	if moveDirection.x > 0:
		priest_sprite.flip_h = false
	elif moveDirection.x < 0:
		priest_sprite.flip_h = true
	move_and_slide()
