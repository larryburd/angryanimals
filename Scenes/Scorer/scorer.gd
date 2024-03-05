extends Node

var _attmepts: int = 0
var _cup_hits: int = 0
var _total_cups: int = 0
var _level_number: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	_total_cups = get_tree().get_nodes_in_group("cup").size()
	_level_number = ScoreManager.get_level_selected()
	SignalManager.on_attempt_made.connect(on_attempt_made)
	SignalManager.on_cup_destroyed.connect(on_cup_destroyed)
	
func on_attempt_made() -> void:
	_attmepts += 1
	
func on_cup_destroyed() -> void:
	_cup_hits += 1
	if _cup_hits == _total_cups:
		pass
	