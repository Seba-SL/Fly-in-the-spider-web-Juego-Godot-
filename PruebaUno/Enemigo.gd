extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	print("¡te voy a agarrar!")

func _process(delta):
	var direccion = Input.get_vector("alt_izq","alt_derecha","alt_arriba","alt_abajo ")

  # Ajusta la velocidad del movimiento
	var velocidad = 100  # Puedes ajustar esta velocidad según lo necesites

	# Mueve el nodo basado en la dirección
	position += direccion * velocidad * delta

