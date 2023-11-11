extends Node2D


func _physics_process(_delta):
	if get_child_count() <= 1:
		var Player = load("res://Player/player.tscn")
		var player = Player.instantiate()
		player.position = $Spawn.position
		add_child(player)





func _on_exit_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://level_3.tscn")






