class Player
attr_reader :health
attr_accessor :name
def initialize(name, health = 100)
	@name = name
	@health = health
end
def time
Time.now.strftime("%H:%M")
end
def say_hello
	name = "Ich bin #{@name}, mit einem Wert von #{@health} um #{time}"
end
def score
	@name.length + @health
end
end

class Game
def initialize(title)
	@title = title
	@player = []
end
def add_player(spieler)
@player << spieler

end
def play
puts "There are #{@player.count} Players in #{@title}"
end
end