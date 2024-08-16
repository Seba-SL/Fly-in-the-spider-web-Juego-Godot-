extends CharacterBody2D

@export var bounce_factor: float = 1.0
@export var salud = 5 
@onready var barra = $"../GUI/ProgressBar"
var inmune : bool = false
# Called when the node enters the scene tree for the first time.

func _ready():
	barra.max_value = salud
	print("¡Hola, Godot!")
	pass
	
func _process(delta):
	daño_control()
	pass

func _physics_process(delta):
	var direccion = Input.get_vector("alt_izq","alt_derecha","alt_arriba","alt_abajo" )

  # Ajusta la velocidad del movimiento
	var velocidad = 250  # Puedes ajustar esta velocidad según lo necesites

	# Mueve el nodo basado en la dirección
	position += direccion * velocidad * delta
	pass



func _on_volver_al_menu_pressed():
	get_tree().change_scene_to_file("res://escenas/menu_inicio.tscn")
	pass # Replace with function body.


func _on_progress_bar_changed():
	pass # Replace with function body.



func daño_control():
	if inmune == true:
		if salud > 0:
			salud -= 1
			barra.value = salud 
			inmune = false
		if salud <= 0:
			get_tree().reload_current_scene()
	pass
	
