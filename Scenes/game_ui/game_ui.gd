extends Control

class_name GameUI

@onready var level_label: Label = $MC/VB/HB/LevelLabel
@onready var moves_label: Label = $MC/VB/HB2/MovesLabel
@onready var best_label: Label = $MC/VB/HB3/BestLabel

func _ready() -> void:
	var ln: String = GameManger.get_level_selected()
	level_label.text = ln
	if GameManger.has_level_score(ln):
		best_label.text = str(GameManger.get_best_score(ln))

func set_moves_label(moves: int) -> void:
	moves_label.text = str(moves)
