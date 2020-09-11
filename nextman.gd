extends Button

var a = 1
var b = 0

onready var V = $"../Vasili"
onready var D = $"../David"
onready var DA = $"../Darya"

func _on_change_pressed():
	if a > 1:
		a -= 1
	else:
		a = 3
	enabler('left')

func enabler(b):
	if b == 'left':
		if (a == 3):
			$"../Vasili/Anim".play('left 1')
			GLOBAL.mydeck.man = GLOBAL.Darya
		elif (a == 2):
			$"../Vasili/Anim".play('left 2')
			GLOBAL.mydeck.man = GLOBAL.David
		elif (a == 1):
			$"../Vasili/Anim".play('left 3')
			GLOBAL.mydeck.man = GLOBAL.Vasili
	if b == 'right':
		if (a == 1):
			$"../Vasili/Anim".play_backwards('left 1')
			GLOBAL.mydeck.man = GLOBAL.Darya
		elif (a == 3):
			$"../Vasili/Anim".play_backwards('left 2')
			GLOBAL.mydeck.man = GLOBAL.David
		elif (a == 2):
			$"../Vasili/Anim".play_backwards('left 3')
			GLOBAL.mydeck.man = GLOBAL.Vasili
	pass

func _on_change2_pressed():
	if a < 3:
		a += 1
	else:
		a = 1
	enabler('right')
