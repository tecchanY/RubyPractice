require 'pry'
require 'pry-byebug'

# ほとんどの有名なプログラミング言語にはない特徴
# 手続きオブジェクトprocはオブジェクトに付属していない（それ自身がオブジェクト）状態で
# 変数に保存したりメソッドに渡したりしてブロック内のコードを好きな時に何度でも実行できる

toast = Proc.new do
  puts 'かんぱーい！'
end

toast.call
toast.call
toast.call

doYouLike = Proc.new do |aGoodThing|
  puts '私は＊本当に　＊' + aGoodThing + '　が好きだ！'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'

# プログラムでは、何をいつやらなければならいかということに関して厳密に決められている ということはよくあることなのです。
# ファイルを保存したり読み出したりするたび毎に、 同じこと、つまり、ファイルを開き、ほんとに やりたいことを行い、 そしてファイルを閉じる、、をしなければならないのです。
# これは、退屈で忘れやすいことですね。 Rubyでは、ファイルの保存(あるいは読み出し)は上で示したようなコードになっています。
# 従って、実際に保存し(あるいは読み出し)たいこと以外に気を回す必要がなくなります。
def doSelfImportantly someProc
  puts 'みなさん、ちょっとよろしいですか！　私はしたいことがあります…'
  someProc.call
  puts 'OK みなさん、終わりました。　していたことを続けてください'
end

sayHello = Proc.new do
  puts '(✿✪‿✪｡)ﾉｺﾝﾁｬ♡'
end

sayGoodbye = Proc.new do
  puts 'サヨウナラ'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye

# 手続きオブジェクトを何回呼び出すのか、あるいはそもそも呼び出すかどうか を決定するメソッドを書くことも可能です。
def maybeDo someProc
  if rand(2) == 0
    someProc.call
  end
end

def twiceDo someProc
  someProc.call
  someProc.call
end

wink = Proc.new do
  puts '＜ウインク＞'
end

glance = Proc.new do
  puts '＜目配せ＞'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance
