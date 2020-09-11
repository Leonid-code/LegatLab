extends "res://Weapons.gd"

func _init(_title, _id, _rank, _lvl, _cost, _weight, _damage_ph, _damage_magic = 0, _damage_element = 0, _icon = ""):
	title = _title
	cost = _cost
	weight = _weight
	damage_ph = _damage_ph
	damage_magic = _damage_magic
	damage_element = _damage_element
	icon = _icon
	rank = _rank
	lvl = _lvl
	type = "Item"
	id = _id
	pass