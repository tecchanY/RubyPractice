require 'pry'
require 'pry-byebug'


# selfはオブジェクト自身を指す特殊な変数
# defはメソッドの宣言時に書くやつ
class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fifty-eight'
    end

    # ↓↓↓なくても想定通りの挙動をするんだけど、なんで書いてあるんだろう…
    # english
  end
end

# 2つの数字についてチェックする
puts 5.to_eng
puts 58.to_eng