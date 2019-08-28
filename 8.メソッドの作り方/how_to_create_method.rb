require 'pry'
require 'pry-byebug'

# メソッド引数
#  numberOfMoosは、(メソッドを実行するときに)与えられた引数を (メソッドの中から)指し示すための変数です。
# もし、sayMoo 3 というコードがあればその引数は3です。 そして、変数 numberOfMoos は3を指し示します。
# def sayMoo numberOfMoos
#   puts 'モォーーー ' * numberOfMoos
# end

# sayMoo 3
# puts 'オインク-オインク'
# sayMoo    #  この行は引数がないためエラーが出てしまいます。

# 局所変数(local variable)
# これらの変数が メソッドの内部にのみ存在できて、そこから出ることができない
# def doubleThis num
#   numTimes2 = num * 2
#   puts num.to_s + ' の２倍は ' + numTimes2.to_s
# end

# doubleThis 44
# puts numTimes2.to_s

# def littlePest(_var)
#   var = nil
#   puts 'ハハ!  お前の変数は破壊したぜ!'
# end

# var = '君はこの変数に手を触れることはできない!'
# littlePest var
# puts var

