extends CharacterBody2D


var max_health: int = 100
var current_health: int = max_health

@onready var health_bar: ProgressBar = $GUI/vida_mosca
# Called when the node enters the scene tree for the first time.
func _ready():
	$GUI/vida_mosca.value = max_health
	print("¡Hola, Godot!")
	pass
	
func _process(_delta):
	
	pass

func _physics_process(delta):
	var direccion = Input.get_vector("ui_left","ui_right","ui_up","ui_down" )

  # Ajusta la velocidad del movimiento
	velocity = direccion*900  # Puedes ajustar esta velocidad según lo necesites
	move_and_slide()
	


	
