extends CharacterBody2D

@export var salud = 5 
@onready var barra = $GUI/ProgressBar
var inmune : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	barra.max_value = salud
	print("¡Hola, Godot!")
	
func _process(delta):
	daño_control()
	pass

func _physics_process(delta):
	var direccion = Input.get_vector("ui_left","ui_right","ui_up","ui_down" )

  # Ajusta la velocidad del movimiento
	var velocidad = 750  # Puedes ajustar esta velocidad según lo necesites

	# Mueve el nodo basado en la dirección
	position += direccion * velocidad * delta
	
	
func daño_control():
	if inmune == true:
		if salud > 0:
			salud -= 1
			barra.value = salud 
			inmune = false
		if salud <= 0:
			get_tree().reload_current_scene()
	pass
	
	
