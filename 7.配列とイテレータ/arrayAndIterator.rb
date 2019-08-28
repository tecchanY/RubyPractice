# []
# [5]
# ['Hello', 'Goodbye']

# flavor = 'バニラ'
# [89.9, flavor, [true, false]] # これは配列
# 変数はオブジェクトではないので、あとからflavorの値を変更しても配列は変更されない

# names = ['Ada', 'Belle', 'Chris']

# puts names
# puts names[0]
# puts names[1]
# puts names[2]
# puts names[3] # 空欄

# language = ['English', '日本語', 'Ruby']

# # 配列languageの中にあるオブジェクトそれぞれeachに対し、langという変数に代入したうえで
# # endまでの間に書いてあるすべてのことを実行doさせる
# # eachは配列のメソッドのひとつ
# language.each do |lang|
#     puts '私は　' + lang + 'が好きです'
#     puts 'あなたはどうですか'
# end

# puts 'では、C++についても聞かせてください'
# puts '…'

# # timesもイテレータ
# 3.times do
#     puts 'ヒップヒップフレー'
# end

# 好きな数だけ単語の入力をしてもらい(1行に1単語、最後はEnterだけの空行)、
# アルファベット順に並べ変えて出力するようなプログラムを書いてみましょう?いいですか？
# ary = []
# elem = gets.chomp
# while elem != ''
#     ary << elem
#     elem = gets.chomp
# end
# puts ary.sort

# 上のプログラムをsortメソッドなしで 書けますか。
# プログラミングの大部分は、問題解決にあります。 これはいい練習になります。
ary = []
elem = gets.chomp
while elem != ''
    ary << elem
    elem = gets.chomp
end
# 文字列で比較してtrueなら順に再代入、falseなら逆に再代入
# trueの場合はすでに代入して順になってるのでfalseの場合のみ記述すればいい
# →→→結局わからず。一つ目と二つ目を置換するのはできた。
if ary[0] < ary[1] === false
    ary[0], ary[1] = ary[1], ary[0]
end
puts ary
