extends CharacterBody2D

const SPEED      := 60.0
const GRAVITY    := 280.0
const JUMP_FORCE := -140.0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta

	var dir := Input.get_axis("ui_left", "ui_right")
	velocity.x = dir * SPEED

	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_FORCE

	move_and_slide()
	_update_animation(dir)

func _update_animation(dir: float) -> void:
	if not is_on_floor():
		sprite.play("jump")
		sprite.frame = 0 if velocity.y < 0 else 1
		sprite.pause()
	elif dir != 0:
		sprite.play("walk")
		sprite.flip_h = dir < 0
	else:
		sprite.play("idle")
