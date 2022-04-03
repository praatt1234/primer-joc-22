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
	
	velocitat += gravetat * delta
	velocitat = move_and_slide(velocitat, Vector2.UP)


