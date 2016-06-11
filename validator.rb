def validate(n)
	string = n.to_s
	array = string.split(//)
	array = array.map(&:to_i)
	array.reverse!
	array = array.map.with_index{|value, index| index.even? ? value : value * 2}
	array.reverse!
	array = array.map{|x| x > 9 ? x - 9 : x}
	sum = array.inject{|sum, num| sum + num}
	if sum % 10 == 0
		puts "This number is valid"
	else
		puts "This number is invalid"
	end
end

puts "Input a credit card number to test"
validate(gets.strip.chomp)
gets