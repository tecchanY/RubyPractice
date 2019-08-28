require 'pry'
require 'pry-byebug'

# 1行バージョン
#  次の単語たちは普通の英語の文章のように書ける、プログラムの一部です。
#  クールでしょ？
puts 'あいうえお　かきくけこ' if 5 == 2**2 + 1**1
puts 'さしすせそ　たちつてと' unless 'Chris'.length == 5

def doItTwice &block
  block.call
  block.call
end

doItTwice do
  puts 'いろはにほへと　ちりぬるを'
end

# ブロックをとるメソッドを書くもう一つの方法
# 上記メソッドと同じ動作になる
def doItTwice2
  yield
  yield
end

doItTwice2 do
  puts 'わかよたれそ　つねならぬ'
end