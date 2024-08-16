extends CharacterBody2D

# Propiedades
var max_health: int = 100
var current_health: int = max_health

# Referencia a la barra de vida
@onready var health_bar: ProgressBar = $HealthBar
func _ready():
	update_health_bar()
	print("¡Hola, Godot!")
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
	queue_free() # O cualquier otra lógica para manejar la muerte del personaje
	
