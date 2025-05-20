extends Control

const LEVELS_COUNT: int = 30
const LEVEL_BUTTON = preload("res://Scenes/level_button/level_button.tscn")

@onready var grid_container: GridContainer = $MC/VB/GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_grid()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func setup_grid() -> void:
	for level in range(LEVELS_COUNT):
		var lb: LevelButton = LEVEL_BUTTON.instantiate()
		lb.setup(str(level+1))
		grid_container.add_child(lb)
	
