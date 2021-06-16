extends Node2D
 
export var bau = 0
export var bauF = 0

export var boatposition = Vector2()

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
 
export var FazendaDialog = [
	'Qualquer marinheiro que embarcasse num navio pirata sabia, por exemplo, que sem presa não haveria paga. Por isso, era uma gente disposta a tudo. Quando o capitão do navio finalmente conseguia arrebanhar a tripulação de que precisava para zarpar, estabelecia as regras para a divisão do produto do saque.',
	'Henry Avery, é um dos grandes nomes da pirataria nessa época, ficou muito famoso por ser um dos poucos grandes capitães piratas a aposentar-se com o seu saque sem ser preso ou morto em combate.'
]
 
export var TesouroDialog = [
	'Um certo número de fatores levou a que os piratas anglo-americanos fossem procurar tesouros no Caribe no início da década de 1690 dando início ao período conhecido como rota pirata.',
	'Não há muitas informações precisas sobre os reais paradeiros dos tesouros piratas. Acredita-se que não era costume do Capitão guardar suas riquezas no navio, pois se destituído, ou abandonado numa ilha deserta, seu tesouro ficaria com outro que não era merecedor.'
]
 
export var NavioDialog = [
	'Na primavera de 1717, o capitão Samuel Bellamy, também conhecido como "Black Sam" Bellamy e sua tripulação perseguiram e tomaram o Whydah Gally.',
	'O Whydah era um navio negreiro inglês de 300 toneladas, ele tinha acabado a segunda etapa do tráfico de escravos e estava carregado de ouros e bens de comércio.',
	'Barry Clifford encontrou o naufrágio do Whydah Gally em 1984, baseando-se fortemente em um "mapa do tesouro pirata" realista e moderno que leva a uma descoberta de proporções sem precedentes.'
]
 
export var finalDialog = [
	'Em resposta a grande quantidade de piratas, as nações europeias reforçaram as próprias frotas marítimas para dar maior proteção aos navios mercadores e para caçar piratas.',
	'Em 1720 a pirataria estava claramente em forte declínio. A Época Dourada da Pirataria já não passou daquela década.'
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
