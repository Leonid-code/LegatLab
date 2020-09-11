extends KinematicBody2D

#ENENMY class - !!!attention!!! work only on monsters node in 
#root_world/monsters/enemy where enemy is current class
#also enemy packed scene must have all the animations and nodes like in example

var user = preload("res://User.gd")
onready var player = $"../../player body"
onready var drops = $"../../drops"
onready var points = $"../../points"
#abilities
var point = preload("res://scenes/bodies/point.tscn")


var effectbrofist = preload("res://abileffects/brofist.tscn")
var brofist = effectbrofist.instance()

var lastpos
var relative_pos = Vector2(0,0)
var a = int(rand_range(-100,100))
var b = int(rand_range(-100,100))
var aa = 0 
var bb = 0

var ColdownOfMoves = 10
var coldown = false

var selfperson = user.new("Skelet",14,9,8)
var arealvl = GLOBAL.mydeck.man.lvl 
var selflvl = int(rand_range(1,10))
var abillist = [GLOBAL.sbp,GLOBAL.ssp,GLOBAL.stp]
var current
var drop = [GLOBAL.knife6,GLOBAL.knife7,GLOBAL.knife8,GLOBAL.knife9]
var pricexp = 80
var priceep = 7
var selfrank = ['common',1]

var isdie = false
export (int) var speed = 20

var velocity = Vector2()

var attackCD = 10
var CD = 0
var punchtime = true
var target = null

var state = "default"
var state_list = ["default","stun","stop","push","get_back","run_away"]

var stun_time = 5

func _ready():
	var r = int(rand_range(0,360))
	rotation = r

	aa = position.x + a
	bb = position.y + b
	
	skillup()

func _physics_process(delta):
	
	die()
	
	#if not dead
	if !isdie && state == state_list[0]:
		LookAtMeOrGo()
		
		tofight()
		
		update()
		
		coldowner()
		
		animate()
		
	if state == state_list[1]:
		stun()

func LookAtMeOrGo():
	if relative_pos.distance_to(player.position) < 300:
		if relative_pos.distance_to(player.position) > 60:
			speed_change(30)
			if !GLOBAL.lvlf:
				#replace move
				velocity = (GLOBAL.manpos - relative_pos).normalized() * speed
				rotation = velocity.angle()
				velocity = move_and_slide(velocity)
		look_at(GLOBAL.manpos)
	else:
		if !coldown:
			#afk moves
			speed_change(20)
			if position.x - aa < 1 && position.y - bb < 1:
				coldown = true
				ColdownOfMoves = int(rand_range(0,140))
				a = int(rand_range(-100,100))
				b = int(rand_range(-100,100))
				aa = position.x + a
				bb = position.y + b
			else:
				velocity = (Vector2(a,b)).normalized() * speed
				rotation = velocity.angle()
				velocity = move_and_slide(velocity)

func update():
	relative_pos = $'../'.position + position

func tofight():
	if relative_pos.distance_to(player.position) < 100:
		exclusive()
		attack()

func attack():
	if CD < attackCD:
		CD += 0.1
	else:
		if abillist.size() > 0:
			current = abillist[0]
			var neweffect = brofist.duplicate()
			#literally every move of attak:
			#position, range, damage
			neweffect.getobject(current,'player')
			if !time_to('spawn') && !time_to('punch'):
				$"AnimationPlayer".play('punch')
			add_child(neweffect)
		CD = 0
	pass

func initopp():
	GLOBAL.opponent1.person.name = selfperson.name
	GLOBAL.opponent1.person.force = selfperson.force
	GLOBAL.opponent1.person.endurance = selfperson.endurance
	GLOBAL.opponent1.person.dexterity = selfperson.dexterity
	GLOBAL.opponent1.lvl = selflvl
	GLOBAL.opponent1.person.lvl = selflvl
	GLOBAL.opponent1.metrank = selfrank

func die():
	if selfperson.Hp <= 0:
		if !isdie:
			var gift = pricexp * selfperson.lvl
			var epgift = priceep
			
			create_points(gift,epgift)

			randomize()
			if rand_range(0,2) > 1.6:
				drop = [drop[rand_range(0,drop.size())]]
				drops.create_drop(drop[0],position)
		if !time_to('die') && !isdie:
				$"AnimationPlayer".play('die')
				$"CollisionPolygon2D".disabled = true
				isdie = true
		if !time_to('die') && isdie:
			yield(get_tree().create_timer(10),"timeout")
			queue_free()

func create_points(gift,epgift):
	while gift > 10:
		points.create_point(10,0,position)
		gift -= 10
	while gift > 0:
		points.create_point(1,0,position)
		gift -= 1
	while epgift > 10:
		points.create_point(0,10,position)
		epgift -= 10
	while epgift > 0:
		points.create_point(0,1,position)
		epgift -= 1
	pass

func exclusive():
	GLOBAL.opponent1.abillist = abillist
	GLOBAL.opponent1.drop = drop

func skillup():
	var sp = int(selflvl)
	var j
	while sp > 0:
		j = rand_range(0,3)
		if j <= 1:
			selfperson.dexterity += 1
		if j > 1 && j <= 2:
			selfperson.endurance += 1
		if j > 2:
			selfperson.force += 1
		sp -= 1
	selfperson.MaxHp = selfperson.endurance * pow(10,selfrank[1])
	selfperson.Hp = selfperson.MaxHp
	speed_change(20)

func speed_change(a):
	if selfperson.dexterity < 50:
		speed = a + selfperson.dexterity
	else:
		speed = a + 50

func coldowner():
	if ColdownOfMoves < 150 && coldown:
		ColdownOfMoves += 1
	else:
		ColdownOfMoves = int(rand_range(0,140))
		coldown = false

func change_state(s):
	if s in state_list:
		state = s
	pass

func stun():
	stun_time -= 0.1
	if stun_time < 0:
		change_state("default")
		stun_time = 5


# look like working well/// need some balance here
func get_pain():
	if (!time_to('movement') && !time_to('punch') 
		&& !time_to('spawn') && !time_to('die')):
				$"AnimationPlayer".play('get_pain')
	change_state("stun")
	stun_time = 5

func time_to(anim):
	if $"AnimationPlayer".current_animation == anim:
		return $"AnimationPlayer".is_playing()
	return false

func animate():
	if position != lastpos:
		if (!time_to('movement') && !time_to('punch') 
		&& !time_to('spawn') && !time_to('die') && !time_to('get_pain')):
				$"AnimationPlayer".play('movement')
	else:
		if (!time_to('idle') && !time_to('punch') 
		&& !time_to('spawn') && !time_to('die') && !time_to('get_pain')):
				$"AnimationPlayer".play('idle')
	lastpos = position

