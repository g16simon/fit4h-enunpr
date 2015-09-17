# Methoden:
# a. definieren Sie eine Methode say_hello mit dem Argument name. Das Ergebnis des Aufrufs ist dann die Ausgabe: 'Ich bin Ludwig'

def say_hello(name)
	name = "Ich bin #{name}"
end
puts say_hello("Ludwig")

# b. rufen Sie die Methode mit verschiedenen namen auf

def say_hello(name)
	name = "Ich bin #{name}"
end

puts say_hello("Klaus")

# c. puts soll nun aus der Methode entfernt werden
# d. aendern sie die Methode, so dass sie einen Statndarparmameter health entgegennimmt. Die Ausgabe lautet dann: 'Ich bin Ludwig mit einem Wert von 100'

def say_hello(title, wert=30)
	name = "Ich bin #{title}, mit einem Wert von #{wert}"
end

puts say_hello("Klaus",20)

# e. definieren Sie eine Methode time, die in der Methode say_hello aufgerufen wird und die Ausgabe folgendermaßen ergaenzt: 'Ich bin Ludwig mit einem Wert von 100 um 18:25'

def time
Time.now.strftime("%H:%M")
end
def say_hello(title, wert)
	name = "Ich bin #{title}, mit einem Wert von #{wert} um #{time}"
end

puts say_hello("Klaus",20)

# Klassen:
# a. erstellen Sie eine Klasse mit der Bezeichnung Player

class Player

end

# b. erstellen Sie ein Objekt player1 der Klasse 

obj_player1 = Player.new("Ludwig","80")

# c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
class Player

def initialize(name, health)
	@name = name
	@health = health
end
end
# d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
player1 = Player.new('Bernd', 10)
# e. setzen Sie fuer health einen Standardwert 100
class Player

def initialize(name, health = "100")
	@name = name
	@health = health
end
def time
Time.now.strftime("%H:%M")
end
def say_hello
	name = "Ich bin #{@name}, mit einem Wert von #{@health} um #{time}"
end
end

# f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat

player2 = Player.new("Klaus")

# g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt

class Player

def initialize(name, health = "100")
	@name = name
	@health = health
end
def time
Time.now.strftime("%H:%M")
end
def say_hello
	name = "Ich bin #{@name}, mit einem Wert von #{@health} um #{time}"
end
end

player1 = Player.new("Ludwig",80)

# h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health umd 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.

class Player

def initialize(name, health = "100")
	@name = name
	@health = health
end
def blam
	@health += 10
	puts "Tom got blamed"
end
def w00t
	@health -= 10
	puts "Tom got w00ted"
end
def time
	Time.now.strftime("%H:%M")
end
def say_hello
	name = "Ich bin #{@name}, mit einem Wert von #{@health} um #{time}"
end
end

player1 = Player.new("Ludwig",80)

# i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.

player1 = Player.new("Ludwig",80)
players = player1.say_hello
puts players

















