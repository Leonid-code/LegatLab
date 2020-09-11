extends Label

func _ready():
	self.set_text(str(GLOBAL.hp,'/',GLOBAL.maxhp,'hp'))

func _process(delta):
	self.set_text(str(GLOBAL.hp,'/',GLOBAL.maxhp,'hp'))