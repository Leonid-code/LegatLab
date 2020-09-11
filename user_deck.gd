var man
var metname
var metep
var metmaxep
var metlvl
var metmaxlvl
var metrank

func _init(_man,_met):
	man = GLOBAL.user.new(_man.name,_man.force,_man.endurance,_man.dexterity)
	metname = _met.name
	metep = _met.ep
	metmaxep = _met.maxep
	metlvl = _met.lvl
	metmaxlvl = _met.maxlvl
	metrank = _met.rank