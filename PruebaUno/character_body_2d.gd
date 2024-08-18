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
	
	if $"GUI/vida_araña".value == 0 :
		get_tree().change_scene_to_file("res://escenas/menu_inicio.tscn")
	pass

func _physics_process(_delta):
	var direccion = Input.get_vector("alt_izq","alt_derecha","alt_arriba","alt_abajo" )
	# Ajusta la velocidad del movimiento
	velocity = direccion*400  # Puedes ajustar esta velocidad según lo necesites
	_on_animated_sprite_2d_frame_changed()
	move_and_slide()

	pass


func _on_animated_sprite_2d_animation_changed() -> void:
	pass # Replace with function body.


func _on_animated_sprite_2d_frame_changed() -> void:
	pass # Replace with function body.
