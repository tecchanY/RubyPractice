require 'pry'
require 'pry-byebug'

# String.newは 空の文字列を、Array.newは空の配列を作ります。
# 数字もまた例外です。整数はInteger.newでは作ることができません。
# 整数が欲しければそのまま整数を書かなければなりません。

# a = Array.new + [12345] # Arrayの足し算
# b = String.new + 'hello' # Stringの足し算
# c = Time.new

# puts 'a = ' + a.to_s
# puts 'b = ' + b.to_s
# puts 'c = ' + c.to_s

time = Time.new # このWebページをgetした瞬間。
time2 = time + 60 # 1分後

puts time
puts time2

puts Time.mktime(2000, 1, 1) #Y2K
puts Time.mktime(1976, 8, 3, 10, 11) # 作者の生まれたとき

