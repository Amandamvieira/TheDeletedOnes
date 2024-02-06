extends KinematicBody2D


var PosicaoInicial
var velocidade

# Called when the node enters the scene tree for the first time.
func _ready():
	PosicaoInicial = position
	velocidade = Vector2(150,150)

func _physics_process(delta):
	var colisao = move_and_collide(velocidade * delta)
	
	if colisao != null:
		if colisao.collider.name == "ParedeBaixo" or colisao.collider.name == "ParedeCima":
			velocidade.y = velocidade.y  * -1 #inverte a vel da bola na vertical
			
		if colisao.collider.name == "player1" or colisao.collider.name == "player2":
			if colisao.normal.x != 0:
				velocidade.x = velocidade.x * -1
				
			if colisao.normal.y != 0:
				velocidade.y = velocidade.y * -1 
			
			$"../batidabola".play()
			
			
		
		if colisao.collider.name == "foraesquerda":
			position = PosicaoInicial
			
		if colisao.collider.name == "foradireita":
			position = PosicaoInicial

