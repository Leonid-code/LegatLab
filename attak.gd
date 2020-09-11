var title

var element

var damageph = 0
var damageel = 0 
var damagemagic = 0

var cost = 0
var costofph = 0
var costofmagic = 0
var costconcentration

var multy = 1
var lvl = 1
var rank = ['common',1]
var typeofcard = 'attack'
var content = 'some card'
var lore = 'there is some info about ability'

#ignoring 
var ignoreblock
var ignoreresist
var ignoreel

#chances
var chance_of_direction
var chance_of_full_damage


func _init(_title,_element,_rank,_1,_2,_3,_11,_22,_33,_conc,_multy,_type):
	title = _title
	damageph = _1
	damageel = _2
	damagemagic = _3
	costofph = _11
	cost = _22
	costofmagic = _33
	element = _element
	rank = _rank  
	multy = _multy
	costconcentration = _conc
	typeofcard = _type


func lvlupit(_count):
	""" lvl up -> rank up
	"""
	lvl += _count
	if lvl > 10 :
		lvl = 1
		
		damageel = devider(damageel)
		damageph = devider(damageph)
		damagemagic = devider(damagemagic)
		if (rank[1] < 5):
			rank = GLOBAL.change_rank(rank[1]+1)
		elif(rank[1] == 5):
			lvl = 10


func devider(a):
	if rank[1] != 5:
		if a > 50:
			a /= 5
		if a < 50 && a > 0:
			a = 50
	return a


func damagephupit(_count):
	damageph += _count


func damagemagicupit(_count):
	damagemagic += _count


func damageelupit(_count):
	damageel += _count

#2 func below is for saving all data about abilities
func razvertivanie():
	var a = self
	return {
		title = a.title,
		element = a.element,
		damageph = a.damageph,
		damageel = a.damageel,
		damagemagic = a.damagemagic,
		cost = a.cost,
		costofph = a.costofph,
		costofmagic = a.costofmagic,
		costconcentration = a.costconcentration,
		multy = a.multy,
		lvl = a.lvl,
		rank = a.rank,
		typeofcard = a.typeofcard,
		content = a.content,
		ignoreblock = a.ignoreblock,
		ignoreresist = a.ignoreresist,
		ignoreel = a.ignoreel,
		chance_of_direction = a.chance_of_direction,
		chance_of_full_damage = a.chance_of_full_damage,
		lore = a.lore
	}


#a must be {}
func svertivanie(a):
	title = a.title
	element = a.element
	damageph = a.damageph
	damageel = a.damageel
	damagemagic = a.damagemagic
	cost = a.cost
	costofph = a.costofph
	costofmagic = a.costofmagic
	costconcentration = a.costconcentration
	multy = a.multy
	lvl = a.lvl
	rank = a.rank
	typeofcard = a.typeofcard
	content = a.content
	ignoreblock = a.ignoreblock
	ignoreresist = a.ignoreresist
	ignoreel = a.ignoreel
	chance_of_direction = a.chance_of_direction
	chance_of_full_damage = a.chance_of_full_damage
	lore = a.lore

