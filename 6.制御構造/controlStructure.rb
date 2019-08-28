# frozen_string_literal: true
# require "bundler/setup"
require 'pry'
require 'pry-byebug'
# require 'pry-doc'
# require 'byebug'

# 文字列同士を比較した場合、その文字的順序 （つまり辞書順という意味ですが）によって 比べることになります。
puts 'cat' < 'dog'
# コンピュータの中では 大文字が小文字よりも先に来ます。
# なので、本当の辞書において、どちらの単語が先に来るかをはっきりさせたいときには、
# 文字列を比較しようとする前にはどちらの単語についても downcase(あるいはupcaseかcapitalize)を行っておく ことが必要です。

command = ''

# while command != 'bye'
#   puts command
#   command = gets.chomp
# end

# puts 'また来てくださいね！'

# while command != 'bye'
#   command = gets.chomp
#   puts command
# end

# command = ''
# puts 'また来てくださいね！'

# while command != 'bye'
# gets.chompのおかげで無限ループを回避
#   command = gets.chomp
#   puts command
#   command = ''
# end

# puts 'また来てくださいね！'

command = gets.chomp

while command != 'bye'
  puts command
  command = gets.chomp
  # binding.pry
end
  puts 'また来てくださいね！'
