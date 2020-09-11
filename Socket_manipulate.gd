extends Control

var id = 0
var title = ""
var time = 0
var lasttime = 0
var base_position = Vector2()

func _physics_process(delta):
	titler()

func titler():
	if base_position == Vector2():
		base_position = $"title".rect_position
	$"title".text = title
	time += 0.1
	if time > lasttime + 1:
		lasttime = time
		if mouse_here():
			$"title".show()
		else:
			$"title".hide()
	#position
	var offset = 70
	var move = 70
	
	if rect_global_position.x + offset > get_viewport_rect().size.x:
		if is_base_position():
			$"title".rect_position.x -= move
	else:
		$"title".rect_position.x = base_position.x
	
	if rect_global_position.x < offset:
		$"title".rect_position.x += move
	elif rect_global_position.x + offset > get_viewport_rect().size.x:
		$"title".rect_position.x = base_position.x
	
	if rect_global_position.y < offset:
		if is_base_position():
			$"title".rect_position.y += move
	else:
		$"title".rect_position.y = base_position.y
		
	if rect_global_position.y + offset > get_viewport_rect().size.y:
		$"title".rect_position.y -= move
	elif rect_global_position.y > offset:
		$"title".rect_position.y = base_position.y

func is_base_position():
	return base_position == $"title".rect_position

func set_icon(_icon_path):
	$icon.texture = load(_icon_path)
	pass

func border(need_to_show):
	if need_to_show:
		$"border1".show()
		$"border2".show()
	else:
		$"border1".hide()
		$"border2".hide()

func delete():
	queue_free()

func mouse_here():
	return get_global_rect().has_point(get_global_mouse_position())
