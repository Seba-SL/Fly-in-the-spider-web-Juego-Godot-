extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("¡Hola, Godot!")

func _process(delta):
	var direccion = Input.get_vector("ui_left","ui_right","ui_up","ui_down" )

  # Ajusta la velocidad del movimiento
	var velocidad = 420  # Puedes ajustar esta velocidad según lo necesites

	# Mueve el nodo basado en la dirección
	position += direccion * velocidad * delta
