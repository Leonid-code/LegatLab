var user = preload("res://User.gd")

var person
var pricexp = 0 
var priceep = 0
var lvl
var metname
var metep
var metmaxep
var metlvl
var metmaxlvl
var metrank = ['common',1]
var abillist = []
var drop = []

func _init(_1,_2,_met):
	person = user.new(_1.name,_1.force,_1.endurance,_1.dexterity)
	#price of winning in xp 
	lvl = _2
	pricexp = 50
	metname = _met.name
	metep = _met.ep
	metmaxep = _met.maxep
	metlvl = _met.lvl
	metmaxlvl = _met.maxlvl
	metrank = _met.rank