extends Area2D

var positions = [
	Vector2(1077,643), 
	Vector2(1200,643)
]
var p = 0
var tween


func _on_timer_timeout():
	p = wrapi(p + 1, 0, len(positions))
	if tween:
		tween.kill()
	tween = create_tween()
	tween.tween_property(self, "position", positions[p], 1)


func _on_body_exited(body):
	if body.name == "Player":
		body.queue_free()
		get_tree().change_scene_to_file("res://End_Game.tscn")
