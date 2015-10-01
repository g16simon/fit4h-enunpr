class Playlist
def initialize(name)
	@name = name
	@movies = []
end
def add_movie(movie)
	@movies << movie
end
def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end
def to_s #to_s gehört zur Klasse Playlist
	 @movies.size.to_s #to_s gehört nicht zur Klasse Playlist
end
end
class Movie
	attr_accessor :title
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end
	def thumbs_up
		@rank += 1
	end
	def thumbs_down
		@rank -= 1
	end
	
	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end
end

movie1 = Movie.new('Ninja Turtles',4)
movie2 = Movie.new('45 years',8)
movie3 = Movie.new('8mm',10)
pl = Playlist.new("Theo")
pl.add_movie(movie1)
pl.add_movie(movie2)
puts pl
pl.play



#movies = [movie1,movie2,movie3]
#movies.each do |movie|
#	movie.thumbs_up
#	movie.thumbs_up
#	puts movie
#end




# 999999.times do 
# 	obj_movie1.thumbs_down
# puts obj_movie1.to_s
	
# end





# def movie_listing(title,rank=10)
# 	if title != "Ninja Turtles"
# 	"Movie: #{title.reverse.downcase.capitalize} hat #{weekday} das Ranking #{rank}" 
# end
# end

# def weekday
# time =  Time.now.strftime("Today is %A")
# 	end

# puts movie_listing("Ninja Turtles")
# puts movie_listing("SWAT",3)
# puts movie_listing("Pate",4)

# #Beispiel für Variablen innerhalb von Methoden
# def movie_listing
# 	var = "Movie: Ninja Turtles"
# 	puts "var innerhalb Methode: #{var.object_id}"
# 	var2 = "Movie: SWAT"
# 	"#{var}\n#{var2}"
# end

# var = movie_listing
# puts "var ausserhalb: #{var.object_id}"
# puts "Rückgabewert #{var}"



# puts weekday