class Socket extends Node:
	var title = ""
	var icon = ""
	var id = 0
	
	func _init(_title, _id, _icon = ""):
		title = _title
		icon = _icon
		id = _id

class Item extends Socket:
	var cost = 1
	var weight = 0
	
	var damageph
	var damageelement
	var damagemagic
	
	func _init(_title, _id, _cost, _weight, _icon = ""):
		"""_title, _id, _cost, _weight, _icon = "" xd
		"""
#		title = _title
#		icon = _icon
#		id = _id
		weight = _weight
		cost = _cost

class Ability extends Socket:
	var damage_ph = 0
	var damage_magic = 0
	var damage_el = 0
	var concentration_cost = 1
	var lvl = 1
	var rank = ['common',1]
	var element = null
	
	func _init(_title, _id, _damage_ph, _damage_magic, _damage_el, _concentration_cost, _lvl, _rank = ['common',1], _icon = "",_element = null):
#		title = _title
#		icon = _icon
#		id = _id
		element = _element
		damage_ph = _damage_ph
		damage_magic = _damage_magic
		damage_el = _damage_el
		concentration_cost = _concentration_cost
		rank = _rank
		lvl = _lvl







