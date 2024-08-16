extends CharacterBody2D


var max_health: int = 100
var current_health: int = max_health

@onready var health_bar: ProgressBar = $GUI/ProgressBar
# Called when the node enters the scene tree for the first time.
func _ready():
	$GUI/ProgressBar.value = max_health
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
	


	
