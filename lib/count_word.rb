def count_word(file, f_swear)
	swear = File.open(f_swear).collect {|x| x.chomp}
	res = Hash.new(0)
	File.open(file).each do |line|
		words = line.downcase.split(/[^[[:word:]]]+/)
		words.each do |word|
			if swear.include?(word)
				res[word] += 1
			end
		end
	end
	res.sort_by {|k, v| -v}
end

res = count_word("../rcs/t8.shakespeare.txt", "../rcs/swearWords.txt")
res.each {|k, v| puts "#{k} : #{v}"}
