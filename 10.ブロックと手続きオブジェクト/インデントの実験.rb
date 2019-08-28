require 'pry'
require 'pry-byebug'

$nestingDepth = 0 # 入れ子が1段階のとき

$nestingDepth = $nestingDepth + 2
$spaces = '  ' * $nestingDepth

puts $spaces + 'aaa'