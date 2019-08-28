require 'pry'
require 'pry-byebug'

# ハッシュは配列に非常に似ていて、いろいろな種類のオブジェクトを 指し示すことの出来る項目のようなものをまとめています。
# ただし、 配列ではそれらの項目は1列に並んでおり、それらの１つ１つには (0から)数字が振られているのに対して、
# ハッシュではその項目が 並んではおらず(ある意味ごちゃ混ぜになっていて)、
# それぞれの 項目を参照するのに、数ではなくどんな オブジェクトも 使うことが出来ます。

# colorArray = []
# colorHash = {}

# colorArray[0] = '赤'
# colorArray[1] = '緑'
# colorArray[2] = '青'
# colorHash['strings'] = '赤'
# colorHash['numbers'] = '緑'
# colorHash['keywords'] = '青'

# colorArray.each do |color|
#   puts color
# end
# colorHash.each do |codeType, color|
#   puts codeType + ': ' + color
# end

weirdHash = Hash.new

weirdHash[12] = 'モンキーズ'
weirdHash[[]] = '空っぽ'
weirdHash[Time.new] = 'するなら今だ'

weirdHash.each do |weirdHash|
  puts weirdHash
end