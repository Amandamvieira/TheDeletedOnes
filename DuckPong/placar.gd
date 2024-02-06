extends Node

var score_player1 : int = 0
var score_player2 : int = 0

# Função para aumentar o placar do jogador 1
func increase_score_player1():
	score_player1 += 1
	print("Placar do jogador 1:", score_player1)

# Função para aumentar o placar do jogador 2
func increase_score_player2():
	score_player2 += 1
	print("Placar do jogador 2:", score_player2)
