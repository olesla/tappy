extends Node

const GROUP_PLAYER: String = "player"
const SCROLL_SPEED: float = 120.0

const GRAVITY: float = 1500.0
const POWER: float = -250.0

var main_scene: PackedScene = preload("res://scenes/main/main.tscn")
var game_scene: PackedScene = preload("res://scenes/game/game.tscn")

func load_game_scene() -> void:
	get_tree().change_scene_to_packed(game_scene)
func load_main_scene() -> void:
	get_tree().change_scene_to_packed(main_scene)
