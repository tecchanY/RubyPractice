require 'pry'
require 'pry-byebug'

# puts 'こんにちわ、君の名前は？'
# name = gets.chomp
# puts 'こんにちわ、' + name + '.'
# if name == 'Chris'
#     puts 'いい名前だね'
# else
#     if name == 'Katy'
#         puts 'いい名前だね'
#     end
# end

# puts 'こんにちわ、君の名前は？'
# name = gets.chomp
# puts 'こんにちわ、' + name + '.'
# if (name == 'Chris' or name == 'Katy')
#     puts 'いい名前だね'
# end

# number = 99

# while number > 0
#     puts number.to_s + ' Bottles of beer on the wall'
#     puts number.to_s + ' Bottles of beer'
#     number = number-1
#     puts 'Take one down and pass it around'
#     puts number.to_s + ' Bottles of beer on the wall'
#     puts ''
#     # binding.pry
# end

# comment1 = gets.chomp
# comment2 = gets.chomp
# comment3 = gets.chomp

# while (comment1 != 'BYE' or comment2 != 'BYE' or comment3 != 'BYE' )
#     puts 'は?! もっと大きな声で話しておくれ、坊や!'
#     comment1 = gets.chomp
#     comment2 = gets.chomp
#     comment3 = gets.chomp
# end

# year = 1930 + rand(21)
# puts 'いやー、' + year.to_s + '年以来ないねー!'

startYear = gets.chomp
endYear = gets.chomp
yearDiff = endYear.to_i - startYear.to_i
# うるう年がstartYear～endYear年の間に何回あったか計算
leapYearCount = yearDiff/4 - yearDiff/100 + yearDiff/400
puts leapYearCount.to_s
