extends CanvasLayer

var coins = 0

var heart1 
var heart2 
var heart3 

func _ready():
	heart1 = get_node("Heart1")
	heart2 = get_node("Heart2")
	heart3 = get_node("Heart3")
	$CoinsCollectedText.text = String(coins)
	
func handleCoinCollected():
	print("Coin Collected")
	coins+=1
	$CoinsCollectedText.text = String(coins)
	
	
	if coins==3:
		## Cambio de nivel
		##get_tree().change_scene("res://Scenes/Mundo2.tscn")
		get_tree().change_scene("res://Scenes/Mundo" + str(int(get_tree().current_scene.name)+1)+".tscn")
		
func handleHearts(var lifes):
	if lifes == 0:
		heart1.visible = false
		
	if lifes == 1:
		heart2.visible = false
		
	if lifes == 2:
		heart3.visible = false
