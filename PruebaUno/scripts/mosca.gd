extends CharacterBody2D


var max_health: int = 100
var current_health: int = max_health

@onready var health_bar: ProgressBar = $GUI/vida_mosca
# Called when the node enters the scene tree for the first time.
func _ready():
	$GUI/vida_mosca.value = max_health
	print("¡Hola, Godot!")
	pass
	

func _physics_process(_delta):
	
	var direccion = Input.get_vector("ui_left", "ui_right" ,"ui_up","ui_down")
	
	
	if Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("arriba")
	
	if Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.play("abajo")
	
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("izquierda")
		
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("derecha")
  # Ajusta la velocidad del movimiento

	velocity = direccion*900  # Puedes ajustar esta velocidad según lo necesites
	move_and_slide()

func _process(_delta):
	if $GUI/vida_mosca.value == 0 :
		get_tree().change_scene_to_file("res://escenas/muere_mosca.tscn")
	pass

func _on_area_daño_area_exited(_area: Area2D) -> void:
	$AnimatedSprite2D.play("arriba_dañado")
	
	$GUI/vida_mosca.value -= 20
	$"../Punch-2-123106".play()
	await get_tree().create_timer(3).timeout
	pass # Replace with function body.


func _on_punch_2123106_finished() -> void:
	pass # Replace with function body.
