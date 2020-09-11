extends "res://Ability.gd"

func _init(_title,_id, _rank, _lvl, _damage_ph, _damage_magic = 0,
 _damage_element = 0, _conccost = 0, _epcost = 0, _icon = "", _element = ""):
	title = _title
	damage_ph = _damage_ph
	damage_magic = _damage_magic
	damage_element = _damage_element
	icon = _icon
	rank = _rank
	lvl = _lvl
	concentration_cost = _conccost
	ep_cost = _epcost
	element = _element
	id = _id
	pass