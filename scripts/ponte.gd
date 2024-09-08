extends Area2D

onready var ponta = $ponta
onready var sprite = $ponta/Sprite
onready var quebra = $quebra
onready var madeira = $madeira
onready var nowood = $nowood
onready var notfrieren = $"../notfrieren"




func _on_ponte_body_entered(body):
	if body == notfrieren and Autoload.velocidade != 0:
		ponta.collision_layer = 0
		ponta.collision_mask = 0
		
		
		

func _on_ponte_body_exited(body):
	ponta.collision_layer = 1
	ponta.collision_mask = 1
	


func _on_nowood_timeout():
	madeira.stop()


func _on_potaqpariu_body_entered(body):
	if body == notfrieren and Autoload.velocidade != 0:
		ponta.collision_layer = 0
		ponta.collision_mask = 0
		sprite.hide()
		quebra.restart()
		madeira.play()
		nowood.start()
