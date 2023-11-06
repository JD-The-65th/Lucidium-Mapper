extends Node

var config = ConfigFile.new()

var err = config.load("user://settings.cfg")




func _ready():
	if err != OK:
		get_tree().change_scene_to_file("res://Scenes/Core/first_time_setup.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/Core/main_menu.tscn")
