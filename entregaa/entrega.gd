extends KinematicBody2D
var inici = Vector2(15,26)
var posicio = inici
var velocitat_base = 200
var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 150
var salt = Vector2.UP * 125

func _physics_process(delta):
	
	velocitat.x = 0 # si no ho poses es comporta com gel
	#velocitat.y = 0 
	
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base

	if Input. is_action_pressed("mou amunt") and is_on_floor():
		velocitat += salt
		
	if Input. is_action_pressed("espai"):
		posicio = Vector2(991,34)
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)




func _on_portal_body_entered(body):
	if body.name == 'jon':
		get_tree().change_scene("res://entregaa/2. escena.tscn")
	


func _on_inici2_body_entered(body):
	if body.name == 'jon':
		get_tree().reload_current_scene()


func _on_Area2D_body_entered(body):
	if body.name == 'jon':
		get_tree().reload_current_scene()
		
