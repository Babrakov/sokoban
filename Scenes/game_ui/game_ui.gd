extends Control

class_name GameUI

@onready var level_label: Label = $MC/VB/HB/LevelLabel
@onready var moves_label: Label = $MC/VB/HB2/MovesLabel
@onready var best_label: Label = $MC/VB/HB3/BestLabel
@onready var game_over_npr: NinePatchRect = $GameOverNPR
@onready var moves_done_label: Label = $GameOverNPR/MC/VB/VB/MovesLabel
@onready var record_label: Label = $GameOverNPR/MC/VB/VB/RecordLabel

func _ready() -> void:
	var ln: String = GameManger.get_level_selected()
	level_label.text = ln
	if GameManger.has_level_score(ln):
		best_label.text = str(GameManger.get_best_score(ln))

func set_moves_label(moves: int) -> void:
	moves_label.text = str(moves)

func game_over(moves: int, was_best: bool) -> void:
	moves_done_label.text = "Yoiu took %d moves" % moves
	record_label.visible = was_best
	game_over_npr.show()
