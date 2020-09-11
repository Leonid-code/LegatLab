extends Node

# var classes and objects

var user = preload("res://User.gd")
var Vasili = user.new("Vasili",10,10,15)
var Darya = user.new("Darya",8,7,20)
var David = user.new("David",12,13,10)
var Dude = user.new("Dude",10,10,10)

#new class system!!!
var knife_preset = preload("res://Knife.gd")
#title,id,rank,_lvl,cost,weight,damage_ph,damage_magic=0,damage_element=0,icon=""
var knife6 = knife_preset.new('bone knife',10001,['common',1],1,10,20,10,0,0,"res://img/sockets/knife.png")
var knife7 = knife_preset.new('old bone knife',10002,['common',1],1,9,18,9,0,0,"res://img/sockets/knife.png")
var knife8 = knife_preset.new('older bone knife',10003,['common',1],1,8,18,8,0,0,"res://img/sockets/knife.png")
var knife9 = knife_preset.new('scarred bone knife',10004,['common',1],1,5,20,5,0,0,"res://img/sockets/knife.png")
var knife10 = knife_preset.new('perfect bone knife',10005,['common',1],1,15,15,15,0,0,"res://img/sockets/knife.png")


var sword_preset = preload("res://Sword.gd")
#title,id,rank,_lvl,cost,weight,damage_ph,damage_magic=0,damage_element=0,icon=""
var sword6 = sword_preset.new('bone sword',20001,['common',1],1,30,30,20,0,0,"res://img/sockets/sword.png")
var sword7 = sword_preset.new('old bone sword',20002,['common',1],1,30,30,18,0,0,"res://img/sockets/sword.png")
var sword8 = sword_preset.new('older bone sword',20003,['common',1],1,30,30,16,0,0,"res://img/sockets/sword.png")
var sword9 = sword_preset.new('scarred bone sword',20004,['common',1],1,30,30,14,0,0,"res://img/sockets/sword.png")
var sword10 = sword_preset.new('perfect bone sword',20005,['common',1],1,30,30,30,0,0,"res://img/sockets/sword.png")
var secret_sword1 = sword_preset.new('misteious sword',21001,change_rank(2)
	,1,150,30,30,10,0,"res://img/sockets/misterious_sword.png")


var axe_preset = preload("res://Axe.gd")
var secret_axe1 = axe_preset.new('misteious axe',31001,change_rank(2)
	,1,150,30,30,10,0,"res://img/sockets/misterious_axe.png")


var fireball_preset = preload("res://Fireball.gd")
#_title, _id, _rank, _lvl, _damage_ph, _damage_magic = 0,
#_damage_element = 0, _conccost = 0, _epcost = 0, _icon = "", _element = ""
var fireball1 = fireball_preset.new('fireball',90001,change_rank(2),1,0,0,50,60,5,
"res://img/sockets/fireball.png","Flame")
var temp_AThread = fireball_preset.new('Abyss thread',90002,change_rank(3),1,0,0,100,90,5,
"res://img/sockets/AThread.png","Abyss")

#old class system!!!
var metka = preload("res://metka.gd")
#list of elements
var Chaos = metka.new('Chaos')
var Abyss = metka.new('Abyss') 
var Abyss2 = metka.new('Abyss') #for test
var Flame = metka.new('Flame')

var deckofuser = preload ("res://test.gd")
var mydeck = deckofuser.new(Vasili,Abyss) 
var opponents = preload("res://opponent.gd")
var opponent1 = opponents.new(Dude,1,Abyss2)


var weapon = preload("res://weaponc.gd")
#list of weapons
#knives
var knife = weapon.new('knife','',10,['common',1],10,0,0,0,0,0)
var knife2 = weapon.new('old knife','',10,['common',1],9,0,0,0,0,0)
var knife3 = weapon.new('older knife','',10,['common',1],8,0,0,0,0,0)
var knife4 = weapon.new('scarred knife','',10,['common',1],5,0,0,0,0,0)
var knife5 = weapon.new('perfect knife','',10,['common',1],15,0,0,0,0,0)


#swords
var sword = weapon.new('sword','',30,['common',1],20,0,0,0,0,0)
var sword2 = weapon.new('old sword','',30,['common',1],18,0,0,0,0,0)
var sword3 = weapon.new('older sword','',30,['common',1],16,0,0,0,0,0)
var sword4 = weapon.new('scarred sword','',30,['common',1],14,0,0,0,0,0)
var sword5 = weapon.new('perfect sword','',30,['common',1],30,0,0,0,0,0)


var bow = weapon.new('bow','',50,['common',1],50,0,0,0,0,0)


var attack = preload("res://attak.gd")
#list of attack abilities
var brofist = attack.new('punch','',['common',1],15,0,0,0,0,0,20,1,'attack')
var AThread = attack.new('Abyss thread','Abyss',['rare',3],0,100,0,0,0,5,95,1,'attack')
var rightpunch = attack.new('alfapunch','',['common',1],30,0,0,0,0,0,30,1,'attack')
var headhit = attack.new('aimpunch','',['common',1],40,0,0,0,0,0,45,1,'attack')
var frontkick = attack.new('frontkick','',['common',1],30,0,0,0,0,0,30,1,'attack')
var lowkick = attack.new('lowkick','',['common',1],35,0,0,0,0,0,30,1,'attack')
var fireball = attack.new('fireball','Flame',['modified',2],0,50,0,0,0,5,60,1,'attack')
var cadavrpunch = attack.new('cadavrpunch','Chaos',['modified',2],100,0,0,0,0,10,50,1,'attack')


#sublist of attack abilities (monsters and npc)
var sbp = attack.new('base punch','',['common',1],20,0,0,0,0,0,20,1,'attack')
var ssp = attack.new('middle punch','',['common',1],30,0,0,0,0,0,40,1,'attack')
var stp = attack.new('high punch','',['common',1],40,0,0,0,0,0,60,1,'attack')


#list of other abilities
var holding = attack.new('holding','',['common',1],0,0,0,0,0,0,0,0,'tactic') 
var evasion = attack.new('evasion','',['common',1],0,0,0,0,0,0,0,0,'tactic') 


#list of block abilities
var block1 = attack.new('hand block','',['common',1],15,0,0,0,0,0,20,1,'block')
var block2 = attack.new('leg block','',['common',1],30,0,0,0,0,0,30,1,'block')
var block3 = attack.new('weapon block','',['common',1],40,0,0,0,0,0,45,1,'block')
var block4 = attack.new('sword block','',['common',1],30,0,0,0,0,0,10,1,'block')
#var lowkick = attack.new('lowkick','',['common',1],35,0,0,0,0,0,30,1,'block')

#list of other items attacks must be like 0000000
#var elenite = weapon.new('elenite','',0,['common',1],0,0,0,0,0,0)

#inventory of abiities 
var ability_all = []
var ability_F = [null] # - must contain smt null or item
var ability_G = [temp_AThread] # - must contain smt null or item
var ability_R = [null] # - must contain smt null or item
var ability_T = [fireball1] # - must contain smt null or item

#inventory type of items
var items_all = []
var current_weapon = [null] # - must contain smt null or item

#GRAVE
var grave = preload("res://Graves.gd")
var gravestone = grave.new('gravestone')

var graveinventory = [gravestone]
var graves = graveinventory.size()


#live property
var maxhp = mydeck.man.endurance * 10
var hp = maxhp 
var wasdead = false


var power = mydeck.man.force * 5

var maxconcentration = 200 + mydeck.man.dexterity*5
var concentration = maxconcentration
var concbuff = 0


var timer = 0


#somethink what you deal and get up in world_ranks 
#this give you limit up to start creating your own mask
#and get other met of elements ,lvl limit up 
var trigger = 0 


#flags to spy for user moves
var ZoneFlag = false
var ff = true #fight flag = 1 when fight is current scene
var escff = false #if 1 : press escape in fight scene to leave
var inf = false #inventory flag = 1 when inventory is current scene
var chf #change flag - some stick for inventory
var chf2 #change flag 2 - another stick for inventory
var prf = false #profile flag = 1 when profile is current scene
var lvlf = false #lvl flag = 1 when you reach somelvl until you press ok on lvl up pop up
var suref = false #sure flag = 1 when you wanna exit , if == 1 : sure panel show
var puf = false #pop up flag = 1 when something imit signal , if == 1 : pop up show
var savef = false #save flag = 1 if save files exists
var gf1 = false
var gf2 = false
var block_stepf = false # if == 0 then your attack step
var mydataf = false # if == 1 then fight get your data
var opdataf = false # if == 1 then fight get your op data
var inventorytype = 'abilities' #some stick for inventory
var inventorytype2 = 'abilities' #some other stick for inventory
var cf = 0 # skills
var pf = false # skills
var hf = true # if 0: lvl up is shown
var hf2 = true # if 0: exit pop up is shown
var upgradef = true # if false: upgrade scene is shown
var move_flag = false # if true: you in move
var need_to_redraw = false # if true: inventorys gona redraw

#settings
var pointerf = 0 # if 0: basic if 1: none pointer at all
var GUI_IN = 1
var CURRENT_PANEL = 'world'

#monsters data
var monsterpos = []
var bufm = []
var mi = 0
var mi2 = 0

#trees data
var treespos = []
var buft = []
var ti = 0
var ti2 = 0

#every single hand placed soul data
var every_pos = []

#man position #for gravestone
var manpos = Vector2()
var rotationd = 0

#mouse position #for popup
var mopos = Vector2()


#richtext
var battlelog = 'battlelog \n'
var lvllog = 'you got \n'
var pucontent = ''

#pathes to files
var sp1 = "user://sp1.json"
var content = "res://saves/content.json"

#dataconteiners
var sd = {}
var cd = {}


func _ready():
	hp = maxhp
	randomize(get_process_delta_time())
	#load content to card #use in pop up
	loadcontent()


func _physics_process(delta):
	hpcalc()
	xptolvl()
	eptolvl()
	rankup()
	timer += get_physics_process_delta_time()
	lore()
	if checksave(sp1):
		savef = true
	else:
		savef = false


#init back story for you 
#add russification!!!
func lore():
	#lore of users
	Vasili.lore = """Vasili 
		native world - earth. 
		some back stories
		Have a good dexterity
		"""
	David.lore = """David 
		native world - earth. 
		some back stories
		Have a not-bad force & endurance
		"""
	Darya.lore = """Darya 
		native world - earth. 
		some back stories
		Have a best dexterity
		"""
	#lore of abilities and items
	fireball.lore = """You concentrate power of fire element in your hands.
		this is what i call fireball
		like any elemental attack , cant be bloked by physic blocks
		"""
	holding.lore = """You just stay waiting when your concentration comes up.
		give you some points of concentration
		"""
	brofist.lore = """Base punch by your hands or any weapon
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""
	AThread.lore = """Few threads of clear abyss element come to enemy.
		make some pain
		ignore phys resist
		"""
	rightpunch.lore = """Base punch by your prime hand
		make lot of damage
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""
	lowkick.lore = """Pain-target punch by your feet
		make lot of damage
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""
	frontkick.lore = """Front kick is easy to aim and
		push back your target
		make lot of damage
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""
	cadavrpunch.lore = """Base punch in your cadavr alterego
		need to be in cadavr form
		make lot of damage by chaos element in your body
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""
	headhit.lore = """Hard to aim, punch to targets head
		make lot of damage
		note: if your rank is greater than armour of enemy you'll ignore it
		by your body
		"""


func checksave(sp):
	var sf = File.new()
	if sf.file_exists(sp):
		return true
	return false


func loadcontent():
	cd = load_game(content,cd)
	#init content in every card
	#abil
	brofist.content = cd.brofist
	AThread.content = cd.AThread
	rightpunch.content = cd.rightpunch
	headhit.content = cd.headhit
	frontkick.content = cd.frontkick
	lowkick.content = cd.lowkick
	fireball.content = cd.fireball
	cadavrpunch.content = cd.cadavrpunch
	
	#weapon
	
#	#links
#	Vasili.Hp = hp
#	Vasili.MaxHp = maxhp


#calculating xp and lvls (also sp)
func xptolvl():
	var a = int(mydeck.man.maxxp)
	var b = int(mydeck.man.xp)
	var c = int(mydeck.man.lvl)
	var d = int(mydeck.man.maxlvl)
	var metname = mydeck.metname
	if c != d :
		while (b >= a):
			if d > c:
				c += 1 
				addsp()
				if (c%5) == 0:
					addap()
				hp = maxhp
				addlvllog('full heal points')
				concentration = maxconcentration
				addlvllog('full concentration')
				b -= a 
				a = 200*c*c
				lvlf = 1
			else :
				c = d 
				b = a 
	mydeck.man.xp = b
	mydeck.man.lvl = c
	mydeck.man.maxlvl = d
	mydeck.man.maxxp = a


func addsp():
	GLOBAL.mydeck.man.addsp(1)
	addlvllog('1 skill point')


func addap():
	GLOBAL.mydeck.man.addap(1)
	addlvllog('1 ability point')


#a must be string!
func addlvllog(a):
	GLOBAL.lvllog += a + '\n'



#calculating element point and lvls of met
func eptolvl():
	var a = mydeck.metmaxep
	var b = mydeck.metep
	var c = mydeck.metlvl
	var d = mydeck.metmaxlvl
	var e = mydeck.man.maxlvl
	var rank = mydeck.metrank
	var metname = mydeck.metname
	while (b>a):
		if d > c:
			c += 1 
			b -= a
			a = rank[1]*100*c+rank[1]*10-10
		else :
			c = d 
			b = a 
	mydeck.metmaxep = a
	mydeck.metep = b
	mydeck.metlvl = c
	mydeck.metmaxlvl = d
	mydeck.man.maxlvl = e
	mydeck.metrank = rank


#check triggers and rankup if every condition is true
func rankup():
	var a = mydeck.metmaxep
	var b = mydeck.metep
	var c = mydeck.metlvl
	var d = mydeck.metmaxlvl
	var e = mydeck.man.maxlvl
	var rank = mydeck.metrank[1]
	var metname = mydeck.metname
	if (trigger >= 1 && c == d && a == b && rank == 1):
				rank = 2
				c = 1 
				b = 0
	if (trigger  >= 2 && c == d && a == b && rank == 2):
				rank = 3
				c = 1 
				b = 0
	if (trigger >= 3 && c == d && a == b && rank == 3):
				rank = 4
				c = 1 
				b = 0
	if (trigger >= 4 && c == d && a == b && rank == 4):
				rank = 5
				b = 0
				e += 100
				a = 100000
	mydeck.metmaxep =a
	mydeck.metep = b
	mydeck.metlvl = c
	mydeck.metmaxlvl = d
	mydeck.man.maxlvl = e
	mydeck.metrank = change_rank(rank)

#just caclulating hp by endurance skills and artefacts
func hpcalc():
	maxhp = mydeck.man.endurance * 10
	maxconcentration = 200 + mydeck.man.dexterity*5
	if hp > maxhp :
		hp = maxhp
	if concentration > maxconcentration:
		concentration = maxconcentration
	if (timer>=1):
		timer -=1
		if hp < maxhp:
			hp += int(1 + maxhp/100)
	if concentration < maxconcentration:
		if !move_flag:
			concentration += int(maxconcentration/40)
		else:
			concentration += int(maxconcentration/1000)
	if hp <= 0:
		addlog('you die')
		mydeck.man.xp -= mydeck.man.maxxp/10
		if mydeck.man.xp < 0 :
			mydeck.man.xp = 0
		hp = maxhp
		wasdead = true
		get_tree().change_scene("res://scenes/Ondead.tscn")


#save game to file
func save_game(sp,sd):
	var sf = File.new()
	sf.open(sp,File.WRITE)
	sf.store_line(to_json(sd))
	sf.close()

#load game from file
func load_game(sp,sd):
	var sf = File.new()
	if not sf.file_exists(sp):
		return
	
	sf.open(sp,File.READ)
	var data = {} 
	data = parse_json(sf.get_as_text())
	sd = data
	return data

#write somethink to gamelog
func addlog(a):
	battlelog += '\n' + str(a) + '\n'

#save before deleting from stack
func saveposm():
	mi2 = mi
	for i in range(0,mi):
		bufm += [monsterpos[i]]

#load after deleting from stack
func loadposm():
	mi = mi2
	for i in range(0,mi2):
		monsterpos += [bufm[i]]

#save before deleting from stack
func savepost():
	ti2 = ti
	for i in range(0,ti):
		buft += [treespos[i]]

#load after deleting from stack
func loadpost():
	ti = ti2
	for i in range(0,ti2):
		treespos += [buft[i]]

#push item to stack of moonserposition
func pusht(d):
	ti += 1
	treespos.resize(ti+1)
	treespos[ti] = d

#pop item from stack of moonserposition
func popt():
	if ti != 0:
		var buf = treespos[ti]
		ti -= 1
		return buf

#push item to stack of moonserposition
func pushm(d):
	"""push item to stack of moonserposition
	"""
	mi += 1
	monsterpos.resize(mi+1)
	monsterpos[mi] = d

#pop item from stack of moonserposition
func popm():
	"""pop item from stack of moonserposition
	"""
	if mi != 0:
		var buf = monsterpos[mi]
		mi -= 1
		return buf


#you need to imrove it (like bool variable for better speed)
func inverse0(a):
	"""inverse 0 to 1 and 1 to 0
	"""
	if a == 0:
		return(1)
	else:
		return(0)


#return array without child by id 
func removearr(i,arr):
	"""return array without child by id 
	"""
	for j in range(i,arr.size()-1):
		arr[j] = arr[j+1]
	arr.resize(len(arr)-1)
	return arr

#return rank object by index
func change_rank(a):
	if a == 1:
		return ['common',1]
	elif a == 2:
		return ['modified',2]
	elif a == 3:
		return ['rare',3]
	elif a == 4:
		return ['epic',4]
	elif a == 5:
		return ['legendary',5]
	

func wait():
	yield(get_tree().create_timer(0.1),"timeout")
