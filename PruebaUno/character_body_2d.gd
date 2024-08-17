extends CharacterBody2D

# Propiedades
var max_health: int = 100
var current_health: int = max_health

@onready var health_bar: ProgressBar = $GUI/vida_araña

func _ready():
	$"GUI/vida_araña".value = max_health
	print("¡Hola, Godot!")
	pass
	
func _process(_delta):
	$"GUI/vida_araña".value -= 0.1
		
	if $"GUI/vida_araña".value == 0 :
		get_tree().change_scene_to_file("res://escenas/menu_inicio.tscn")
	pass

func _physics_process(_delta):
	var direccion = Input.get_vector("alt_izq","alt_derecha","alt_arriba","alt_abajo" )
	# Ajusta la velocidad del movimiento
	velocity = direccion*400  # Puedes ajustar esta velocidad según lo necesites
	move_and_slide()

	pass



func _on_volver_al_menu_pressed():
	get_tree().change_scene_to_file("res://escenas/menu_inicio.tscn")
	pass # Replace with function body.
