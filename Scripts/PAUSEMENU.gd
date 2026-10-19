
extends Control

onready var boton_der = get_node("../boton der")
onready var boton_izq = get_node("../boton izq")
onready var boton_brincar = get_node("../brincar")

func _ready():
	visible = false
	pause_mode = Node.PAUSE_MODE_PROCESS

func _input(event):
	if event.is_action_pressed("pause"):
		var pausado = not get_tree().paused
		get_tree().paused = pausado
		visible = pausado

		boton_der.visible = not pausado
		boton_izq.visible = not pausado
		boton_brincar.visible = not pausado
