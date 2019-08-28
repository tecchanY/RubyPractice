require 'pry'
require 'pry-byebug'

birthday = Time.mktime(1992, 4, 30, 6, 00)
later = birthday + 1000000000

puts birthday
puts later

puts 'あなたは何年に生まれましたか？'
year = gets.chomp # ここでは入力された値は文字列として認識される
puts 'あなたは' + year + '年に生まれました。'
puts
puts 'あなたは何月に生まれましたか？'
month = gets.chomp
puts 'あなたは' + month + '月に生まれました。'
puts
puts 'あなたは何日に生まれましたか？'
day = gets.chomp
puts 'あなたは' + day + '日に生まれました。'
puts
now = Time.new
birthday2 = Time.mktime(year, month, day)
age = ((now - birthday2) / (365 * 24 * 60 * 60)).floor # ここでは入力値は数字として認識される
puts 'あなたは今' + age.to_s + '歳です。'