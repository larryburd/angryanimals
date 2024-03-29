extends Node2D

const ANIMAL = preload("res://Scenes/Animal/animal.tscn")
const MAIN = preload("res://Scenes/Main/main.tscn")

@onready var animal_start = $AnimalStart

# Called when the node enters the scene tree for the first time.
func _ready():
	add_animal()
	SignalManager.on_animal_died.connect(add_animal)
	
func add_animal() -> void: 
	var animal = ANIMAL.instantiate()
	animal.position = animal_start.position
	add_child(animal)
