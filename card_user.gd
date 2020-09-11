extends Sprite


var a = preload("res://img/met/modified.png")
var b = preload("res://img/met/rare.png")
var c = preload("res://img/met/epic.png")
var d = preload("res://img/met/legendaryrank.png")
var e = preload("res://img/met/flame.png")
var e2 = preload("res://img/met/abyss_element.png")
var e3 = preload("res://img/met/chaos.png")


var s1 = Vector2()
var s2 = Vector2()


func rmb():
	if Input.is_mouse_button_pressed(2):
		if GLOBAL.cf == 0 :
			#if pf == 1 mean if you press on card
			if GLOBAL.pf:
				#there will be show and hide func for player custom
				$"../../options".show()
				GLOBAL.hf = false
				#upper is script what happend by the click
				GLOBAL.cf = 1


func dontspam():
	if GLOBAL.cf != 0:
		GLOBAL.cf += 1
	if GLOBAL.cf == 50:
		GLOBAL.cf = 0

func _process(delta):
	if GLOBAL.prf:
		rmb()
	dontspam()
	setter()


func setter():
	$name.set_text(GLOBAL.mydeck.man.name)
	$xp.set_text(str(GLOBAL.mydeck.man.xp))
	$maxxp.set_text(str(GLOBAL.mydeck.man.maxxp))
	$lvl.set_text(str(GLOBAL.mydeck.man.lvl))
	if (GLOBAL.mydeck.metrank[0] == 'legendary'):
		$rank.set_texture(d)
	if (GLOBAL.mydeck.metrank[0] == 'rare'):
		$rank.set_texture(b)
	if (GLOBAL.mydeck.metrank[0] == 'modified'):
		$rank.set_texture(a)
	if (GLOBAL.mydeck.metrank[0] == 'epic'):
		$rank.set_texture(c)
	if (GLOBAL.mydeck.metname == 'Flame'):
		$element.set_texture(e)
	if (GLOBAL.mydeck.metname == 'Abyss'):
		$element.set_texture(e2)
	if (GLOBAL.mydeck.metname == 'Chaos'):
		$element.set_texture(e3)


#check pos of mouse , if in card then flag on
func _on_CollisionShape2D_mouse_entered():
	GLOBAL.pf = 1
	
	s1.x = scale.x
	s1.y = scale.y
	s2.x = 1.05 * s1.x
	s2.y = 1.05 * s1.y
	scale = s2


func _on_CollisionShape2D_mouse_exited():
	GLOBAL.pf = 0
	
	scale = s1


