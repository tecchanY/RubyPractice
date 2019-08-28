# word = gets.chomp
# puts 'なにぃ?' + '"' + word.encode("UTF-8") + '"' 'だとー!! おまえは首だ!!'

lineWidth = 30
puts '1章：数'.ljust(lineWidth) + 'p. 1'.rjust(lineWidth)

# randを(例えば5のような) 整数を後につけて呼び出すと0以上5未満(つまり、 0から4までの5つの中から１つ)の整数が選ばれます。
puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('天気予報によると, 今日の降水確率は '+rand(101).to_s+'% です,')
puts('でも予想は予想ですから.')

# 乱数の種(seed) をsrandを使ってセットすると、同じ乱数が同じ順序で返ってくる
# 毎回異なる数字が 出るようにしたくなったら、srand 0とすればよい
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)
