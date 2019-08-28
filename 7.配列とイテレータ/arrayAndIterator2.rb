require 'pry'
require 'pry-byebug'

lineWidth = 30
puts '1章：数'.ljust(lineWidth) + 'p. 1'.rjust(lineWidth)
puts '2章：文字'.ljust(lineWidth) + 'p. 72'.rjust(lineWidth)
puts '3章：変数'.ljust(lineWidth) + 'p. 118'.rjust(lineWidth)

puts

ary = []
ary.push '1章：数'
ary.push '2章：文字'
ary.push '3章：変数'
ary.push 'p. 1'
ary.push 'p. 72'
ary.push 'p. 118'
puts ary[0].ljust(lineWidth) + ary[3].rjust(lineWidth)
puts ary[1].ljust(lineWidth) + ary[4].rjust(lineWidth)
puts ary[2].ljust(lineWidth) + ary[5].rjust(lineWidth)
