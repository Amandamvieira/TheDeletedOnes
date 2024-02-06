extends Node

onready var player1_score_labels = $Label1
onready var player2_score_labels = $Label2
onready var bola = $bola
onready var screen_size = get_viewport().size
var Label1 = 0 
var Label2 = 0



func _ready():
	player1_score_labels.text = "0"
	player2_score_labels.text = "0"

func _on_foraesquerda_body_entered(body):
	Label1 += 1
	update_score_labels()
	

func _on_foradireita_body_entered(body):
	Label2 += 1
	update_score_labels()

func update_score_labels():
	player1_score_labels.text = str(Label1)
	player2_score_labels.text = str(Label2)
