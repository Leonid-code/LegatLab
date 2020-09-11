extends "res://Socket.gd"

var damage_ph = 0
var damage_element = 0
var damage_magic = 0

var concentration_cost = 15
var ep_cost = 0

var lvl = 1
var element = null

func _ready():
	type = "ability"