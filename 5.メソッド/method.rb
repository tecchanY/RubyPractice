# +,-,*,/の演算子メソッドもメソッドなので、実はいつも使うときは.を省略している
# puts 'hello ' .+ 'world'
# puts (10.* 9).+ 9

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

# puts 'あなたのフルネームは何ですか?'
# name = gets.chomp
# puts 'あなたの名前は ' + name.length.to_s +
#     ' 文字だったって知っていましたか, ' + name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts(              'ハバードのおばさんが'.center(lineWidth))
puts(              '食器棚の中に座ったよ'.center(lineWidth))
puts(        'カードとホエーを食べながら'.center(lineWidth))
puts(            '蜘蛛がそばにやってきて'.center(lineWidth))
puts(            'おばさんの隣に座ったよ'.center(lineWidth))
puts('かわいそうな犬は一目散に逃げ出した'.center(lineWidth))

lineWidth = 40
str = '--> 文章 <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
# なぜか2つ目の(で文法エラーになる
# →スペースが入っててエラーになってたっぽい
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)
