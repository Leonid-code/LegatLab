extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var a = preload("res://img/met/200modified.png")
var b = preload("res://img/met/200rare.png")
var c = preload("res://img/met/200epic.png")
var d = preload("res://img/met/200legendaryrank.png")
var e = preload("res://img/met/200flame.png")
var e2 = preload("res://img/met/200abyss_element.png")
var e3 = preload("res://img/met/200chaos.png")



var s1 = Vector2()
var s2 = Vector2()

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	$lvl.set_text(str(GLOBAL.mydeck.metlvl))
	$ep.set_text(str(GLOBAL.mydeck.metep))
	$maxep.set_text(str(GLOBAL.mydeck.metmaxep))
	$element.set_text(str(GLOBAL.mydeck.metname))
	if (GLOBAL.mydeck.metrank[0] == 'legendary'):
		$lvl.hide()
		$rank.set_texture(d)
	if (GLOBAL.mydeck.metrank[0] == 'rare'):
		$rank.set_texture(b)
	if (GLOBAL.mydeck.metrank[0] == 'modified'):
		$rank.set_texture(a)
	if (GLOBAL.mydeck.metrank[0] == 'epic'):
		$rank.set_texture(c)
	if (GLOBAL.mydeck.metname == 'Flame'):
		$name.set_texture(e)
	if (GLOBAL.mydeck.metname == 'Abyss'):
		$name.set_texture(e2)
	if (GLOBAL.mydeck.metname == 'Chaos'):
		$name.set_texture(e3)
	pass

func _on_TextureButton_mouse_entered():
	s1.x = scale.x
	s1.y = scale.y
	s2.x = 1.05 * s1.x
	s2.y = 1.05 * s1.y
	scale = s2



func _on_TextureButton_mouse_exited():
	scale = s1