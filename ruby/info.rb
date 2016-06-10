print "Your name "
name = gets.chomp
puts "Hello #{name}"
system "say 'Hello #{name}'. Whats your birthyear?"

print "Your birthyear "
birthyear = gets.chomp
age = 2016-birthyear.to_i
puts "you are #{age} old"
system "So you are #{age} old"


print "Before you go.. Whats your mood today? (happy/sad/angry/others) "
mood = gets.chomp

case mood
when "happy"
	print "Enter any number from 1 to 10 "
	number = gets.chomp
	puts "now its your job to make #{number} people happy!"
	system "say ' now its your job to make #{number} people happy! Have a nice day!'"

when "sad"
	print "There there! why so sad! Get over yourself.. Life is too short!"
	system "say 'awww why so sad! Get over yourself.. Life is too short!'"

when "angry"
	print "ghussa thokdo!!! "
	system "say 'ghussa thokdo!!! anger is bad for health'"
else
	print "Be calm and bazingaa!"
	system "say 'Be calm and bazingaa!'"
end
