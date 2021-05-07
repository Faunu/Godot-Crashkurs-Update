extends Node
class_name world_generator
var world_size
var how_much: float
var Bestandteil1 = Bestandteil.new()
var Bestandteil2 = Bestandteil.new()
var Bestandteil3 = Bestandteil.new()
var Bestandteil4 = Bestandteil.new()
var Bestandteile: int
var numbers_x = []
var numbers_y = []

func _ready():
	pass
func _process(delta):
	pass
func generate(Bestandteilxxx: Bestandteil, much: int, size: float):
	
		how_much = world_size / much
		var generator_number = RandomNumberGenerator.new()
		
		generator_number.randomize()
		for _Zufallszahl in range(how_much / Bestandteile * size):
			var Zahl = generator_number.randi_range(0, world_size)
			Zahl *= Bestandteilxxx.size_x
			if numbers_x.find(Zahl) == -1:
				numbers_x.append(Zahl)
				if Bestandteilxxx.load_path != "":
					var p = load(Bestandteilxxx.load_path).instance()
					add_child(p)
					p.position.x = Zahl
					make_y(generator_number, Bestandteilxxx, p)
			else:
				Zahl = generator_number.randi_range(0, world_size)
				Zahl *= Bestandteilxxx.size_x
				if numbers_x.find(Zahl) == -1:
					numbers_x.append(Zahl)
					if Bestandteilxxx.load_path != "":
						var p = load(Bestandteilxxx.load_path).instance()
						add_child(p)
						p.position.x = Zahl
						make_y(generator_number, Bestandteilxxx, p)
				
						
func pos_coins(how_much_coins: int, size):
	for _i in range(how_much_coins):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://Szenen/coin.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
func pos_keys(how_much_keys: int, size):
	for _i in range(how_much_keys):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://key.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
func pos_jewels(how_much_jewels: int, size):
	for _i in range(how_much_jewels):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://jewels.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
func pos_Smaragde(how_much_Smaragde: int, size):
	for _i in range(how_much_Smaragde):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://Skripte/Smaragd.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
func pos_Rubine(how_much_Rubine: int, size):
	for _i in range(how_much_Rubine):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://Skripte/Rubin.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
		
func pos_Topas(how_much_Rubine: int, size):
	for _i in range(how_much_Rubine):
		var r = RandomNumberGenerator.new()
		r.randomize()
		var x = r.randi_range(0, size)
		x *= 7
		var path = "res://Skripte/Topas.tscn"
		r.randomize()
		var y = r.randi_range(0, size)
		y *= 7
		var c = load(path).instance()
		get_parent().get_parent().find_node("secrets").add_child(c)
		c.position.x = x
		c.position.y = y
func make_y(generator_number, Bestandteilxxx, p):
	var reio = generator_number.randi_range(0, world_size)
	reio *= Bestandteilxxx.size_y
	if numbers_y.find(reio) == -1:
		numbers_y.append(reio)
		p.position.y = reio
	else:
		reio = generator_number.randi_range(0, world_size)
		reio *= Bestandteilxxx.size_y
		if numbers_y.find(reio) == -1:
			numbers_y.append(reio)
			p.position.y = reio
		else:
			reio = generator_number.randi_range(0, world_size)
			reio *= Bestandteilxxx.size_y
			if numbers_y.find(reio) == -1:
				numbers_y.append(reio)
				p.position.y = reio

func generate_raum_2(Bestandteilx: Bestandteil, Gegner: int, all_Gegner: Array):
	var Raum2_node = get_parent().get_parent().get_node("Raum2")
	var real_world_size = get_parent().get_parent().world_size * 7
	var i = load(Bestandteilx.load_path).instance()
	Raum2_node.add_child(i)
	i.position = Vector2(0, 0)
#	var position_1: int = 0
#	var position_2: int = 0
#	var position_3: int = 0
#	var position_4: int = 0
#	for Bestandtei_l in range(0, real_world_size / Bestandteilx.size_x):
#		var i = load(Bestandteilx.load_path).instance()
#		Raum2_node.add_child(i)
#		i.position.x = position_1
#		i.position.y = 0
#		position_1 += 7
#	for Bestandtei_l in range(0, real_world_size / Bestandteilx.size_y):
#		var i = load(Bestandteilx.load_path).instance()
#		Raum2_node.add_child(i)
#		i.position.x = 0
#		i.position.y = -position_2
#		position_2 += 7
#	for Bestandtei_l in range(0, real_world_size / Bestandteilx.size_x):
#		var i = load(Bestandteilx.load_path).instance()
#		Raum2_node.add_child(i)
#		i.position.x = position_3
#		i.position.y = -real_world_size
#		position_3 += 7
#	for Bestandtei_l in range(0, real_world_size / Bestandteilx.size_x):
#		var i = load(Bestandteilx.load_path).instance()
#		Raum2_node.add_child(i)
#		i.position.x = real_world_size
#		i.position.y = -position_4
#		position_4 += 7
	plaziere_Gegner(Gegner, all_Gegner, Raum2_node, real_world_size)
		
#	if bebaut1 < real_world_size and nr1_fertig == false:
#		var i = load(Bestandteilx.load_path).instance()
#		Raum2_node.add_child(i)
#		i.position.x = bebaut1
#		i.position.y = 0
#		bebaut1 += Bestandteilx.size_x
#	else:
#		nr1_fertig = true
#		if bebaut2 < real_world_size and nr2_fertig == false:
#			var i = load(Bestandteilx.load_path).instance()
#			Raum2_node.add_child(i)
#			i.position.x = bebaut2
#			i.position.y = world_size
#			bebaut2 += Bestandteilx.size_x
#		else:
#			nr2_fertig = true
#			if bebaut3 < real_world_size and nr3_fertig == false:
#				var i = load(Bestandteilx.load_path).instance()
#				Raum2_node.add_child(i)
#				i.position.x = 0
#				i.position.y = -bebaut3
#				bebaut3 += Bestandteilx.size_y
#			else:
#				nr3_fertig = true
#				if bebaut4 < real_world_size and nr4_fertig == false:
#					var i = load(Bestandteilx.load_path).instance()
#					Raum2_node.add_child(i)
#					i.position.x = world_size
#					i.position.y = -bebaut4
#					bebaut4 += Bestandteilx.size_y
#				else:
#					nr4_fertig = true



func plaziere_Gegner(Gegner: int, all_Gegner: Array, Raum2_node, real_world_size):
	var s = RandomNumberGenerator.new()
	for i in range(0, Gegner):
		s.randomize()
		var what_Gegner = s.randi_range(0, all_Gegner.size() - 1)
		var gegner_now = all_Gegner[what_Gegner]
		var this_Gegner = load(gegner_now.load_path).instance()
		Raum2_node.get_node("Gegner").add_child(this_Gegner)
		s.randomize()
		this_Gegner.global_position.x = s.randi_range(80, 200)
		
		this_Gegner.global_position.y = 200
		



