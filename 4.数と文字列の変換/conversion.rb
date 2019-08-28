var1 = 2
var2 = '5'

puts var1.to_s + var2
# var1は明示的に再代入しない限り2を指し続ける
puts var1 + var2.to_i

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 は好きな数字！'.to_i
puts '誰から5が好きだって聞いたの？'.to_i
puts '君のママからだよ'.to_f
puts ''
puts '文字列っぽい'.to_s
puts 3.to_i

# putsは文字列の出力、getsは文字列の入力
# ただの復唱
puts gets

# これだとgetsは私の名前と Enterを すべて取り込んでしまう
# puts 'こんにちわ！君の名前は？'
# name = gets
# puts '君の名前は' + name + 'だね。いい名前だね。'
# puts 'よろしく、' + name + '. :)'

# Enterを防いで改行しないようにするにはchompを使う
puts 'こんにちわ！君の名前は？'
name = gets.chomp
puts '君の名前は' + name + 'だね。いい名前だね。'
puts 'よろしく、' + name + '. :)'

# nameに日本語を入力するとincompatible character encodings: UTF-8 and Windows-31J
# というエラーになる。VSCodeで書いたプログラムはデフォルトでUTF-8が使われるが、
# コマンドプロンプトで入力した文字列の文字コードはShift-JISになり、異なる文字コードを連結しようとしてエラーになっている

