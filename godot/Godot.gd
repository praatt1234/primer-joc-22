extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

#export: definirli variable a personatge
export var velocitat = Vector2(300,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 90
	position = Vector2(30,50)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	
	if position.x >= 1024:
		velocitat.x = -velocitat.x
	if position.x <= 0:
		velocitat.x = -velocitat.x
	if position.y <= 0:
		velocitat = -velocitat.y
	if position.y >= 600:
		velocitat = -velocitat.y
