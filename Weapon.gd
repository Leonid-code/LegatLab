extends KinematicBody2D


func _process(delta):
	if GLOBAL.pack4.inv.size() > 0:
		$"card_main/name".set_text(GLOBAL.pack4.inv[0].title)
		$"card_main/damageph".set_text(str(GLOBAL.pack4.inv[0].damageph))
		$"card_main/damageel".set_text(str(GLOBAL.pack4.inv[0].damageel))
		$"card_main/damagemagic".set_text(str(GLOBAL.pack4.inv[0].damagemagic))
		$"card_main/lvl".set_text(str(GLOBAL.pack4.inv[0].lvl))
	else:
		$"card_main/name".set_text('hands')
		$"card_main/damageph".set_text(str(5))
		$"card_main/damageel".set_text(str(0))
		$"card_main/damagemagic".set_text(str(0))
		$"card_main/lvl".set_text(str(1))
