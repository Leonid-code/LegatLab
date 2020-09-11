var name
var ep
var maxep
var lvl
var maxlvl
var rank

func _init(_1):
	name = _1
	ep = 0
	maxep = 100
	lvl = 0
	maxlvl = 10
	rank = ['common',1]

func change_rank(a):
	if a == 1:
		rank = ['common',1]
	elif a == 2:
		rank = ['modified',2]
	elif a == 3:
		rank = ['rare',3]
	elif a == 4:
		rank = ['epic',4]
	elif a == 5:
		rank = ['legendary',5]
	return rank