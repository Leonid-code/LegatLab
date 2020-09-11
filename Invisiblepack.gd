extends VBoxContainer

var maxac = GLOBAL.pack2.inv.size()
var maxx = 580
var wc = preload("res://scenes/card_weapon.tscn")
var updater = 0


var mouse_scroll_value = 0
const MOUSE_SENSITIVITY_SCROLL_WHEEL = 15


func _ready():
	loadcards()
	

func _process(delta):
	scrolling()
	
	
	
	
func scrolling():
	if (get_children().size()>6):
		if (get_child(1).position.y > 135 or get_child(get_children().size()-1).position.y > 560):
			for q in range(get_children().size()):
				if Input.is_action_pressed('ui_down'):
					get_child(q).position.y -= 15
				if mouse_scroll_value < 0 && may_i_scroll():
					get_child(q).position.y += mouse_scroll_value
		if (get_child(get_children().size()-1).position.y < 560 or get_child(1).position.y < 135):
			for q in range(get_children().size()):
				if Input.is_action_pressed('ui_up'):
					get_child(q).position.y += 15
				if mouse_scroll_value > 0 && may_i_scroll():
					get_child(q).position.y += mouse_scroll_value
		
		mouse_scroll_value = 0



func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP or event.button_index == BUTTON_WHEEL_DOWN:
			if event.button_index == BUTTON_WHEEL_UP:
				mouse_scroll_value += MOUSE_SENSITIVITY_SCROLL_WHEEL
			elif event.button_index == BUTTON_WHEEL_DOWN:
				mouse_scroll_value -= MOUSE_SENSITIVITY_SCROLL_WHEEL




func loadcards():
	for i in range(maxac):
		var ox = i 
		var oy = ((i+2)/2)-1
		while ox > 1:
			ox = ox-2
		var newwc = wc.instance()
		newwc.pullfrompack2(i)
		newwc.scale.x = 1
		newwc.scale.y = 1
		var a = maxx/3.15
		var b = 235
		newwc.position.x += a*ox + 75
		newwc.position.y = oy*b + 135
		add_child(newwc)


func may_i_scroll():
	if GLOBAL.inventorytype2 == 'items':
		if self.get_global_rect().has_point(get_global_mouse_position()):
			return true
	return false

