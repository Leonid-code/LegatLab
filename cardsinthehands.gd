extends Container

var ac = preload("res://scenes/card_attack.tscn")
var maxac = GLOBAL.pack1.inv.size()
var maxx = 990

 
func _ready():
	var s = Vector2()
	s.x = 0.8
	s.y = 0.8
	for i in range(maxac):
		if maxac < 8:
			var newac = ac.instance()
			newac.pullfromall(i,GLOBAL.pack1,GLOBAL.pack1.inv[i],'pack1')
			newac.scale = s
			var a = newac.scale.x * 150 + 10
			newac.position.x += a * i + 185
			newac.position.y = get_size().y - 130
			add_child(newac)
		else:
			var newac = ac.instance()
			newac.pullfromall(i,GLOBAL.pack1,GLOBAL.pack1.inv[i],'pack1')
			newac.scale = s
			var b = (maxx-60)/maxac 
			newac.position.x += b*i + 185
			newac.position.y = get_size().y - 130
			add_child(newac)



#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
