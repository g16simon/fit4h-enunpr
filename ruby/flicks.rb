class Movie
	def initialize(ptitle, prank=0)
		@title = ptitle.capitalize
		@rank = prank
	end

	#def title=(ptitle)
	#	@title = ptitle
	#end
	attr_writer :title

	def thumbs_up
		@rank += 1
		#@rank = @rank + 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@title} hat ein Ranking von: #{@rank}."
	end

end

obj_movie1 = Movie.new('Ninja Turtles',4)
puts obj_movie1.to_s
obj_movie1.thumbs_up
puts obj_movie1.to_s
obj_movie1.thumbs_down
puts obj_movie1.to_s

obj_movie1.thumbs_up
puts obj_movie1.to_s
obj_movie1.thumbs_up
puts obj_movie1.to_s
obj_movie1.thumbs_up
puts obj_movie1.to_s

puts obj_movie1.title
obj_movie1.title = "NinjaPurples"
puts obj_movie1

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