name1 = "larry"
health = 60 * 3
puts "'#{name1}'s health is #{health /9.00}"
zwei = "'" + name1 + "'s health is "
puts zwei + health.to_s
puts "Players:\n\tlarry\n\tcurly\n\tmoe"
player2 = "curly"
player3 = "moe"
puts "Players\n\t"+name1+"\n\t"+player2+"\n\t"+player3