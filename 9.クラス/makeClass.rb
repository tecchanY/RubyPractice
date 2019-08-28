require 'pry'
require 'pry-byebug'

# class Die
#   def roll
#     1 + rand(6)
#   end
# end

# # 2つのサイコロを作ってみる（注：dieがサイコロで、複数形がdiceらしい）
# dice = [Die.new, Die.new]

# # そして転がす
# dice.each do |die|
#   puts die.roll
# end

# メソッドの局所変数はメソッド内でしか使えない
# 一方、インスタンス変数はオブジェクトが有効である限り使える
# class Die
#   def roll
#     @numberShowing = 1 + rand(6)
#   end

#   def showing
#     @numberShowing
#   end
# end

# die = Die.new
# die.roll
# puts die.showing
# puts die.showing
# die.roll
# puts die.showing
# puts die.showing

# サイコロを振る前に何の目が出るか見たい
# 値が入ってないのでこれだとnilになる
# puts Die.new.showing

# 振られていないサイコロの出た目、というのはいろいろと矛盾しているので、
# サイコロオブジェクトを作成した瞬間に出る目を決める
class Die
  def initialize
    # ここではサイコロを振るだけ
    # 例えば最初から6にセットしちゃうとか
    # やりたい放題できてしまうことになるけど…
    roll
  end
  def roll
    @numberShowing = 1 + rand(6)
  end
  def showing
    @numberShowing
  end
  # Die.newでDieクラスのオブジェクトが新しく生成されるので、
  # このままだとDie.newするたびにrollして出た値が変わってしまう
end

# cheatメソッドを作って出る目をセットしろって指示だったけどそれいらなくね？
setNumber = Die.new

puts setNumber.showing
puts setNumber.showing

# これは謎の挙動になったため失敗
# class Set
#   def cheat
#     @setNumber = Die.new
#   end
# end

# puts Set.new.cheat
# puts Set.new.cheat
