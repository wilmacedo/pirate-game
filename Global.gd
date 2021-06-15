extends Node2D

export var bau = 0

export var selectedPirate = 0
export var atualScene = 'charSelection'
export var atualLocation = 'sea'
export var defaultSpeed = 10
export var finish = false

export var piratesInfo = [
	{
		'name': 'Barba Negra',
		'description': 'Possivelmente o pirata mais famoso de todos, Edward Teach era mais conhecido como Barba Negra. A bordo de seu navio principal, o Queen Anne’s Revenge, Barba Negra organizou a captura de muitos navios e aterrorizou o Caribe e as colônias americanas.'
	},
	{
		'name': 'Black Bart',
		'description': 'Este foi o pirata de mais sucesso do seu tempo. Ele assaltou mais de 400 navios e era considerado quase invencível. Forçado a se juntar aos piratas que capturaram seu navio, Roberts revelou ter talento como pirata e se tornou capitão de uma frota.'
	},
	{
		'name': 'Calico jack',
		'description': 'John Rackham, mais conhecido como Calico Jack, foi um famoso pirata inglês no Caribe do século 18. Ele é muito conhecido porque a imagem de sua bandeira pirata (chamada de Jolly Roger) era uma caveira com duas espadas cruzadas, figura que ficou marcada como símbolo dos piratas na cultura popular.'
	},
]

func getBoatSpeed():
	var speed = defaultSpeed
	var speeds = {
		'sea': 3,
		'island': 15
	}
	
	for loc in speeds:
		if (loc == atualLocation):
			speed = speeds[loc]
			
	return speed

func _ready():
	pass
