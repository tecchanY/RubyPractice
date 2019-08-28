# puts '君の名は？'
# lastName = gets.chomp
# firstName = gets.chomp
# puts '私の名前は' + lastName.encode(__ENCODING__) + firstName.encode(__ENCODING__) + 'です'
# puts '私の名前は' + lastName.encode("UTF-8") + firstName.encode("UTF-8") + 'です'

puts '好きな数字は？'
number = gets.chomp
numberPlus1 = number.to_i + 1
puts 'おすすめの数字は' + numberPlus1.to_s + 'です'

puts '好きな数字は？'
number = gets.chomp
# この時点でnumberは文字列として認識
# そして、以下のputs後の+は最初に文字列を加算記号ではなく文字列として認識される
puts 'おすすめの数字は' + (number.to_i + 1).to_s + 'です'
