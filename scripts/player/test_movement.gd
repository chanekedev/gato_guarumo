extends ColorRect

const SPEED      = 80.0
const GRAVITY    = 300.0
const JUMP_FORCE = -150.0

var velocity  := Vector2.ZERO
var on_floor  := false

func _physics_process(delta: float) -> void:
	# Gravedad
	velocity.y += GRAVITY * delta

	# Movimiento horizontal
	var direction := 0.0
	if Input.is_action_pressed("ui_left"):
		direction = -1.0
	elif Input.is_action_pressed("ui_right"):
		direction = 1.0
	velocity.x = direction * SPEED

	# Suelo simulado en Y = 180
	if position.y >= 180:
		position.y = 180
		velocity.y = 0
		on_floor = true
	else:
		on_floor = false

	if Input.is_action_just_pressed("ui_up") and on_floor:
		velocity.y = JUMP_FORCE

	# Aplicar movimiento
	position += velocity * delta

	# Limitar a los bordes de la pantalla
	position.x = clamp(position.x, 0, 320 - size.x)
	position.y = clamp(position.y, 0, 200 - size.y)
