extends CharacterBody2D

# Propiedades
var max_health: int = 100
var current_health: int = max_health

func _ready():
	$"../GUI/ProgressBar".value = max_health
	print("¡Hola, Godot!")
	pass
	
func _process(_delta):
	$"../GUI/ProgressBar".value -= 1
	
	if $"../GUI/ProgressBar".value == 0 :
		get_tree().change_scene_to_file("res://escenas/menu_inicio.tscn")
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


