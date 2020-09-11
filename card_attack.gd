extends KinematicBody2D

var a = img_resourses.a
var b = img_resourses.b
var c = img_resourses.c
var d = img_resourses.d
var abc = img_resourses.abc
var e1 = img_resourses.e1
var e2 = img_resourses.e2
var e3 = img_resourses.e3
var id
var typeofpack
var myobject = null



onready var dm = $"card_main/damagemagic"
onready var de = $"card_main/damageel"
onready var dp = $"card_main/damageph"

onready var dm2 = $"card_main/damagemagic2"
onready var de2 = $"card_main/damageel2"
onready var dp2 = $"card_main/damageph2"

onready var dmpos = dm.rect_position
onready var depos = de.rect_position
onready var dppos = dp.rect_position

onready var dm2pos = dm2.rect_position
onready var de2pos = de2.rect_position
onready var dp2pos = dp2.rect_position





func _ready():
	if myobject != null:
		hideuseless()
		swap()



func pullfromall(i,inventory,object,type):
	$"card_main/name".set_text(str(object.title))
	$"card_main/lvl".set_text(str(object.lvl))
	$"card_main/damageph".set_text(str(object.damageph))
	$"card_main/damageel".set_text(str(object.damageel))
	$"card_main/damagemagic".set_text(str(object.damagemagic))
	$"card_main/conc".set_text(str(object.costconcentration))
	$"card_main/type".set_text(str(object.typeofcard))
	id = i
	typeofpack = type
	#object of class attack
	myobject = object
	initrankfromall(i,inventory,object)
	initelementfromall(i,inventory,object)
	markall(i,inventory,object)


func updater():
	$"card_main/name".set_text(str(myobject.title))
	$"card_main/lvl".set_text(str(myobject.lvl))
	$"card_main/damageph".set_text(str(myobject.damageph))
	$"card_main/damageel".set_text(str(myobject.damageel))
	$"card_main/damagemagic".set_text(str(myobject.damagemagic))
	$"card_main/conc".set_text(str(myobject.costconcentration))
	$"card_main/type".set_text(str(myobject.typeofcard))

	if (myobject.rank[0] == 'common'):
		$"card_main/rank".set_texture(abc)
		change_font_color(Color(180,180,180,255))
	elif (myobject.rank[0] == 'modified'):
		$"card_main/rank".set_texture(a)
		change_font_color(Color(0,0,150,255))
	elif (myobject.rank[0] == 'rare'):
		$"card_main/rank".set_texture(b)
		change_font_color(Color(50,0,255,255))
	elif (myobject.rank[0] == 'epic'):
		$"card_main/rank".set_texture(c)
		change_font_color(Color(150,0,255,255))
	elif (myobject.rank[0] == 'legendary'):
		$"card_main/rank".set_texture(d)
		change_font_color(Color(255,255,0,255))

	if (myobject.element == 'Abyss'):
		$"card_main/element".set_texture(e2)
	elif (myobject.element == 'Chaos'):
		$"card_main/element".set_texture(e3)
	elif (myobject.element == 'Flame'):
		$"card_main/element".set_texture(e1)

	$"blockmark".hide()
	$"attackmark".hide()
	$"tacticmark".hide()
	if str(myobject.typeofcard) == 'attack':
		$"attackmark".show()
	elif str(myobject.typeofcard) == 'block':
		$"blockmark".show()
	elif str(myobject.typeofcard) == 'tactic':
		$"tacticmark".show()

	hideuseless()
	swap()


func initrankfromall(i,inventory,object):
	if (myobject.rank[0] == 'common'):
		$"card_main/rank".set_texture(abc)
		change_font_color(Color(180,180,180,255))
	if (myobject.rank[0] == 'modified'):
		$"card_main/rank".set_texture(a)
		change_font_color(Color(0,0,150,255))
	if (myobject.rank[0] == 'rare'):
		$"card_main/rank".set_texture(b)
		change_font_color(Color(50,0,255,255))
	if (myobject.rank[0] == 'epic'):
		$"card_main/rank".set_texture(c)
		change_font_color(Color(150,0,255,255))
	if (myobject.rank[0] == 'legendary'):
		$"card_main/rank".set_texture(d)
		change_font_color(Color(255,255,0,255))



func initelementfromall(i,inventory,object):
		if (myobject.element == 'Abyss'):
			$"card_main/element".set_texture(e2)
		if (myobject.element == 'Chaos'):
			$"card_main/element".set_texture(e3)
		if (myobject.element == 'Flame'):
			$"card_main/element".set_texture(e1)



func markall(i,inventory,object):
	$"blockmark".hide()
	$"attackmark".hide()
	$"tacticmark".hide()
	if str(myobject.typeofcard) == 'attack':
		$"attackmark".show()
	if str(myobject.typeofcard) == 'block':
		$"blockmark".show()
	if str(myobject.typeofcard) == 'tactic':
		$"tacticmark".show()



func hideuseless():
	if dp.text == '0':
		dp.hide()
		dp2.hide()
	if de.text == '0':
		de.hide()
		de2.hide()
	if dm.text == '0':
		dm.hide()
		dm2.hide()


func change_font_color(color):
	for i in get_children():
		for j in i.get_children():
			if j is Label:
				#need to write good color replace function here,func down bad
				if j.get("custom_colors/font_color") != color:
#					j.add_color_override("font_color", color)
#					j.set("custom_colors/font_color", color)
					pass
				pass
			pass
		pass
	pass


func swap():
	if dp.text == '0':
		dm.rect_position = depos
		dm2.rect_position = de2pos
		de.rect_position = dppos
		de2.rect_position = dp2pos
	if de.text == '0':
		dm.rect_position = depos
		dm2.rect_position = de2pos







