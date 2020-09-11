extends KinematicBody2D

onready var player = $"../../../player body"

var i = false

var check = false
var check2 = false

var opacity = 0

func _process(delta):
	activeate()



func activeate():
	#
	if self.position.distance_to(player.position) < 150 && !check2:
		$"howto".show()
		if Input.is_action_just_pressed('ui_e'):
			$"menu/V".show()
			$"howto".hide()
			check2 = true
	elif self.position.distance_to(player.position) >= 150 && check2:
		$"menu/V".hide()
		check2 = false
	elif position.distance_to(player.position) >= 150:
		$"howto".hide()
	#
	if self.position.distance_to(player.position) < 500 && !check:
		$"Part".show()
		$"Part".restart()
		check = true
		opacity = 0
		$"Part".modulate = Color8(255,255,255,0)
	elif self.position.distance_to(player.position) >= 500 && check:
		$"Part".hide()
		check = false
	#opacity
	if opacity < 255:
		$"Part".modulate = Color8(255,255,255,opacity)
		opacity += 1
	
	#button-activity
	if GLOBAL.mydeck.metname == 'Flame':
		$"menu/V/apply".disabled = true
	else:
		$"menu/V/apply".disabled = false

func _on_apply_pressed():
	if !i:
		applyit()
		i = true


func applyit():
	GLOBAL.mydeck.metname = GLOBAL.Flame.name
	GLOBAL.mydeck.metlvl = 0
	GLOBAL.mydeck.metep = 0
	GLOBAL.mydeck.metrank = ['common',1]
	##
	var j = 0
	for i in range (GLOBAL.myabil.inv.size()):
		if GLOBAL.myabil.inv[i-j].element != 'Flame' and GLOBAL.myabil.inv[i-j].element != '':
			GLOBAL.myabil.inv = GLOBAL.removearr(i-j,GLOBAL.myabil.inv)
			j += 1
#	GLOBAL.mydeck.man.damage(int(GLOBAL.mydeck.man.Hp/2))
	j = 0
	
	for i in range (GLOBAL.pack1.inv.size()):
		if GLOBAL.pack1.inv[i-j].element != 'Flame' and GLOBAL.pack1.inv[i-j].element != '':
			GLOBAL.pack1.inv = GLOBAL.removearr(i-j,GLOBAL.pack1.inv)
			j += 1
	
	
	GLOBAL.myabil.inv += [GLOBAL.fireball]
	GLOBAL.fireball.lvlupit(5)
	GLOBAL.fireball.damageelupit(5*3)
	
	##