extends Node2D

onready var door_sprite := $Sprite
onready var open_sound := $OpenDoor
onready var close_sound := $CloseDoor
onready var occluder := $LightOccluder2D

func _ready():
	door_sprite.hide()


func _on_Area2D_body_entered(body):
	door_sprite.show()
	open_sound.play()
	occluder.hide()


func _on_Area2D_body_exited(body):
	door_sprite.hide()
	close_sound.play()
	occluder.show()
