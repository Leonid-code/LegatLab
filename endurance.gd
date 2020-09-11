extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_text(str(GLOBAL.mydeck.man.endurance))

func _process(delta):
	self.set_text(str(GLOBAL.mydeck.man.endurance))
