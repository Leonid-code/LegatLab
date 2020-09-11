var title
var damageph = 0
var damageel = 0 
var damagemagic = 0
var element
var cost = 0
var costofph = 0
var costofmagic = 0
var lvl = 1
var rank = ['common',1]
var price
const typeofcard = 'weapon'
var content = ""

func _init(_title,_element,_price,_rank,_1,_2,_3,_11,_22,_33):
	title = _title
	damageph = _1
	damageel = _2
	damagemagic = _3
	costofph = _11
	cost = _22
	costofmagic = _33
	element = _element
	rank = _rank  
	price = _price



func lvlupit(_count):
	lvl += _count

func damagephupit(_count):
	damageph += _count


func damagemagicupit(_count):
	damagemagic += _count


func damageelupit(_count):
	damageel += _count


func svertivanie(a):
		title = a.title
		damageph = a.damageph
		damageel = a.damageel
		damagemagic = a.damagemagic
		element = a.element
		cost = a.cost
		costofph = a.costofph
		costofmagic = a.costofmagic
		lvl = a.lvl
		rank = a.rank
		price = a.price
		typeofcard = a.typeofcard
		content = a.content


func razvertivanie():
	return {
		title = title,
		damageph = damageph,
		damageel = damageel,
		damagemagic = damagemagic,
		element = element,
		cost = cost,
		costofph = costofph,
		costofmagic = costofmagic,
		lvl = lvl,
		rank = rank,
		price = price,
		typeofcard = typeofcard,
		content = content
	}
