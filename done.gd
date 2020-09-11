extends Button

var user = preload("res://User.gd")

var person_name = 'Vasili'
var person_force = 7
var person_endurance = 7
var person_dexterity = 7
var person_sp = 14

var element = 'r'

func _physics_process(delta):
	updater()
	pass

func updater():
	person_name = $"../editor/name".text
	$"../Vasili/name".text = person_name
	$"../Vasili/force".text = str(person_force)
	$"../editor/force".text = str(person_force)
	$"../Vasili/endurance".text = str(person_endurance)
	$"../editor/endurance".text = str(person_endurance)
	$"../Vasili/dexterity".text = str(person_dexterity)
	$"../editor/dexterity".text = str(person_dexterity)
	$"../editor/total".text = str(person_sp)

func tozero():
	GLOBAL.ability_all = []
	GLOBAL.ability_R = [null]
	GLOBAL.ability_F = [null]
	GLOBAL.ability_T = [null]
	GLOBAL.ability_G = [null]
	GLOBAL.items_all = []
	GLOBAL.current_weapon = [null]
	pass

func _on_done_pressed():
	GLOBAL.mydeck.man = user.new(person_name,person_force
	,person_endurance,person_dexterity)
	GLOBAL.mydeck.man.sp = person_sp
	GLOBAL.hp = person_endurance*10
	get_tree().change_scene("res://scenes/root.tscn")
	randomize(get_process_delta_time())

#	tozero()
#	GLOBAL.items_all = [GLOBAL.knife9]
#somethink went wrong, inventory system crushed
	
	if element == 'r':
		randelement()
	else:
		GLOBAL.mydeck.metname = element

func pickone():
	$"../element/Abyss".modulate = Color8(255,255,255,100)
	$"../element/Chaos".modulate = Color8(255,255,255,100)
	$"../element/Flame".modulate = Color8(255,255,255,100)

func randelement():
	#random pick some element for player
	var i = rand_range(0,3)
	if (i >= 0 && i<1):
		GLOBAL.mydeck.metname = 'Chaos'
	elif (i >= 1 && i<2):
		GLOBAL.mydeck.metname = 'Abyss'
	elif (i >= 2 && i <=3):
		GLOBAL.mydeck.metname = 'Flame'

func _on_f_pressed():
	if person_sp > 0:
		person_force += 1
		person_sp -= 1

func _on_e_pressed():
	if person_sp > 0:
		person_endurance += 1
		person_sp -= 1


func _on_d_pressed():
	if person_sp > 0:
		person_dexterity += 1
		person_sp -= 1


func _on_mf_pressed():
	if person_force > 7:
		person_force -= 1
		person_sp += 1


func _on_me_pressed():
	if person_endurance > 7:
		person_endurance -= 1
		person_sp += 1


func _on_md_pressed():
	if person_dexterity > 7:
		person_dexterity -= 1
		person_sp += 1


func _on_Abyss_pressed():
	if element != 'Abyss':
		element = 'Abyss'
		pickone()
		$"../element/Abyss".modulate = Color8(255,255,255,255)
	else:
		element = 'r'
		pickone()


func _on_Chaos_pressed():
	if element != 'Chaos':
		element = 'Chaos'
		pickone()
		$"../element/Chaos".modulate = Color8(255,255,255,255)
	else:
		element = 'r'
		pickone()


func _on_Flame_pressed():
	if element != 'Flame':
		element = 'Flame'
		pickone()
		$"../element/Flame".modulate = Color8(255,255,255,255)
	else:
		element = 'r'
		pickone()
