
extends CanvasLayer

@onready var spider_health_bar: ProgressBar = $SpiderHealthBar
@onready var fly_health_bar: ProgressBar = $FlyHealthBar

# Referencias a los personajes
@export var spider: Node
@export var fly: Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if spider:
		spider_health_bar.value = spider.current_health
		spider_health_bar.max_value = spider.max_health
		
	if fly:
		fly_health_bar.value = fly.current_health
		fly_health_bar.max_value = fly.max_health


