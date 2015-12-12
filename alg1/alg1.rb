#example usage: ruby alg1.rb
#file INPUT.txt should be present in the same directory as script
File.open('INPUT.txt', 'r') do |f|
  content = f.read
  current_length = 0
  max_length = 0
  content.each_char do |i| 
    if i == '1'
      current_length += 1
    else
      if !current_length.zero? 
	if max_length < current_length
	  max_length = current_length 
	end
      	current_length = 0
      end
    end
  end
  File.write('OUTPUT.txt', max_length)
end