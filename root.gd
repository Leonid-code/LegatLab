extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var inventory = {
	1 : 'personal_card'
}

var Bezdna = {
 'name': 'Bezdna',
 'ep' : 0,
 'maxep':100,
 'lvl' : 1,
 'maxlvl':10,
 'rank': 'common'
 }
var Flame = {
'name': 'Flame',
'ep' : 0,
'maxep':100,
'lvl' : 1,
'maxlvl':10,
'rank': 'common'
}
var Chaos = {
'name': 'Chaos',
'ep': 0,
'maxep':100,
'lvl' : 1,
'maxlvl':10,
'rank': 'common'
}
var Me = {
'metka' : Chaos,
'name':'Vasili',
'xp':0,
'lvl':1,
'maxlvl':100,
'maxxp':100
}

func xptolvl():
	var a = Me.maxxp
	var b = Me.xp
	var c = Me.lvl
	var d = Me.maxlvl
	var name = Me.name
	var metname = Me.metka
	while (b>a):
		if d > c:
			c = c +1 
			b = b - a 
			a = 200*c 
		else :
			c = d 
			b = a 
	Me.xp = b
	Me.lvl = c
	Me.maxlvl = d
	Me.maxxp = a
	

func _process(delta):
	xptolvl()
#	print (b,'/ ',a,'xp',' ',c,'lvl')

func _ready():
	print (Me.xp,'/ ',Me.maxxp,'xp',' ',Me.lvl,'lvl')
#	Me.xp = 24021

func save(content):
    var file = File.new()
    file.open("user://save_game.dat", file.WRITE)
    file.store_string(content)
    file.close()

func load():
    var file = File.new()
    file.open("user://save_game.dat", file.READ)
    var content = file.get_as_text()
    file.close()
    return content