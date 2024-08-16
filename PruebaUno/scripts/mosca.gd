extends CharacterBody2D


var max_health: int = 100
var current_health: int = max_health

@onready var health_bar: ProgressBar = $GUI/ProgressBar
# Called when the node enters the scene tree for the first time.
func _ready():
	update_health_bar()
	print("¡Hola, Godot!")
	pass
	
func _process(delta):
	
	pass

func _physics_process(delta):
	var direccion = Input.get_vector("ui_left","ui_right","ui_up","ui_down" )

  # Ajusta la velocidad del movimiento
	var velocidad = 900  # Puedes ajustar esta velocidad según lo necesites

	# Mueve el nodo basado en la dirección
	position += direccion * velocidad * delta
	

func take_damage(amount: int):
	current_health -= amount
	current_health = clamp(current_health, 0, max_health)
	update_health_bar()
	
	if current_health <= 0:
		die()

func update_health_bar():
	if health_bar:
		health_bar.value = current_health
		health_bar.max_value = max_health

func die():
	queue_free() # O cualquier otra lógica para manejar la muerte del personaj
	
	
