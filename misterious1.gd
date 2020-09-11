extends Node2D

var inv = [null]

var playere_here = false
var time = 0 
var last_time = 0
var opacity = 0
var upper = true

func _ready():
	insert(GLOBAL.secret_sword1)

func _physics_process(delta):
	locator()
	if playere_here:
		if Input.is_action_just_pressed("ui_e"):
			grab()

func insert(item):
	inv[0] = item
	if item.icon != "":
		$icon.texture = load(item.icon)
	pass

func grab():
	if inv[0] != null && GLOBAL.items_all.size() < 40:
		GLOBAL.items_all.append(inv[0])
		GLOBAL.need_to_redraw = true
		queue_free()

func locator():
	if position.distance_to(GLOBAL.manpos) < 70:
		playere_here = true
		$tag.show()
		wave()
	else:
		playere_here = false
		$tag.hide()


func wave():
	if opacity > 0 && !upper:
		$"tag".modulate = Color8(255,255,255,opacity)
		opacity -= 2
		if opacity == 0:
			upper = true
	if opacity < 200 && upper:
		$"tag".modulate = Color8(255,255,255,opacity)
		opacity += 2
		if opacity == 200:
			upper = false

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		playere_here = true
		$tag.show()
		pass
	pass


func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		playere_here = false
		$tag.hide()
		pass
	pass
