require 'pry'
require 'pry-byebug'

# ここでのメソッドは、あるオブジェクトと手続きオブジェクトを受け取って
# そのオブジェクトを引数とした手続きを実行しています。
# 手続きがfalseを返すとプログラムを終了させます。
# でなければ、返ってきた値を引数として また手続きを呼び出します。
# これを、手続きがfalseを返すまで続けます。
#  (必ず最終的にはfalseを返すようにするべきです。でないとプログラムがクラッシュします。)
#  メソッドは、手続きから返ってきたfalseではない最後の値を返します。
# def doUnitFalse firstInput, someProc
#   input = firstInput
#   output = firstInput

#   while output
#     input = output
#     output = someProc.call input
#   end

#   input
# end

# buildArrayOfSquares = Proc.new do |array|
#   lastNumber = array.last
#   if lastNumber <= 0
#     false
#   else
#     array.pop # 末尾の数字を取り出して…
#     array.push lastNumber * lastNumber # …その2乗の数と置き換えて…
#     array.push lastNumber - 1 # …1つ小さい数を後につける
#   end
# end

# alwaysFalse = Proc.new do |justIgnoreMe|
#   false
# end

# inspectメソッドはかなりto_sと似ているのですが、
# to_sが人間が読めるようにするための文字列に変換するのと違って、
# 返す文字列が、渡したオブジェクトを作るためのRubyのコードを表現している
# ところが違います。ここでは、doUntilFalseを最初に呼んだ時に、
# 返ってきた配列をまとめて表示するのに使っています。
# puts doUnitFalse([5], buildArrayOfSquares).inspect
# puts doUnitFalse('私はこれを午前3時に書いています；　私はもうノックアウト！', alwaysFalse)

# def compose proc1, proc2
#   Proc.new do |x|
#     proc2.call(proc1.call(x))
#   end
# end

# squareIt = Proc.new do |x|
#   x * x
# end

# doubleIt = Proc.new do |x|
#   x + x
# end

# doubleThenSquare = compose doubleIt, squareIt
# squareThenDouble = compose squareIt, doubleIt

# puts doubleThenSquare.call(5) # (5+5) * (5+5)
# puts squareThenDouble.call(5) # (5*5) + (5*5)

# メソッドに対して(手続きオブジェクトではなく)ブロックを渡す
class Array
  def eachEven(&wasABlock_nowAProc)
    isEven = true # 配列は0という偶数から始まるので、最初はtrue

    self.each do |object|
      if isEven
        wasABlock_nowAProc.call object
      end

      isEven = (not isEven) # 偶数から奇数へ、あるいは奇数から偶数へとトグルします
    end
  end
end

['アップル', '悪いアップル', 'チェリー', 'ドリアン'].eachEven do |fruit|
  puts 'んー、おいしい！　僕は　' + fruit + 'パイが好きだ'
end

#  配列の偶数番目の要素を取っていることを思い出してください。
#  それらはすべて奇数なわけです。
#  私はこの手の問題を起こすのが結構好きなんですよ。
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s + '　は偶数　で　は　な　い　！！'
end

# コードを実行する前に時間を計り、実行させ、 その後もう一度時間を計り、その差を計算するメソッド
def profile descriptionOfBlock, &block
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock + '：　' + duration.to_s + '秒'
end

profile '25000回同じ数を足し合わせる' do
  number = 1

  25000.times do
    number = number + number
  end

  puts number.to_s.length.to_s + '　桁' # これは、この巨大な数の桁数です。
end

profile '100万まで数える' do
  number = 0

  1000000.times do
    number = number + 1
  end
end
