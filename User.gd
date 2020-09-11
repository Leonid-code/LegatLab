var name
var xp 
var maxxp
var lvl
var maxlvl
var metka = ''
var force 
var endurance
var dexterity
var sp = 0
var ap = 0
var forcemax
var endurancemax
var dexteritymax
var lore
var xid
var yid
var Hp
var MaxHp
var maxconcentration
var concentration
var elements = [metka]

#just caclulating hp by endurance skills and artefacts
func hpcalc():
	MaxHp = endurance * 10
	maxconcentration = 100 + dexterity
	if Hp > MaxHp :
		Hp = MaxHp
	if concentration > maxconcentration:
		concentration = maxconcentration
	if Hp <= 0:
		xp -= maxxp/10
		if xp < 0 :
			xp = 0
		Hp = MaxHp

func damage(a):
	if Hp > 0:
		Hp -= a

func xy(x,y):
	xid = x
	yid = y

func x():
	return xid

func y():
	return yid

func addxp(x):
	xp += x

func addlvl(x):
	lvl += x

func addap(x):
	ap += x

func addsp(x):
	sp += x

func addmaxlvl(x):
	maxlvl += x

func addmaxxp(x):
	maxxp += x

func _init (_1,_2,_3,_4):
	name = _1 
	force = _2
	endurance = _3
	dexterity = _4
	xp = 0
	maxxp = 100
	lvl = 1
	maxlvl = 100
	metka = ''
	forcemax = force+50
	endurancemax = endurance+50
	dexteritymax = dexterity+50
	MaxHp = endurance * 10 
	Hp = MaxHp
	maxconcentration = 100 + dexterity
	concentration = maxconcentration