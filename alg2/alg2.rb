#example usage: ruby alg2.rb 11797
number = ARGV[0].to_i 
dividers = []
for i in 1..Math.sqrt(number.abs).truncate
  dividers << i if number % i == 0
end
dividers.each do |divider|
  to_be_checked = number / divider
  dividers << to_be_checked if !dividers.include?(to_be_checked)
end
dividers.sort!
print dividers
  