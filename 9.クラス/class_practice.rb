require 'pry'
require 'pry-byebug'

class OrangeTree
  def initialize
    @treeYear = 1 + rand(100)
  end

  # 木の高さを返すメソッド
  def height
    puts '木の年齢は' + @treeYear.to_s + '歳になりました'

    @treeHeight = @treeYear * 5
    puts '木の高さは' + @treeHeight.to_s + 'cmでした'
  end

  # 1年分木の時間を進めるメソッド
  def oneYearPasses
    puts '木の年齢は' + @treeYear.to_s + '歳でした'

    # ある年齢まで来たら木は死んでしまう
    if @treeYear > 80
      puts '木はもう' + @treeYear.to_s + '歳なので死んでしまいました'
      exit
    end

    @treeYear = @treeYear + 1
  end

  # 木に生っているオレンジの数を返すメソッド
  # 成長した木は若い木よりも多く実を付ける
  def countTheOranges
    @orangeCount = @treeYear * 2
    if @orangeCount > 0
      puts '木に生っているオレンジの数は' + @orangeCount.to_s + '個でした'
    end
  end

  # オレンジを一つだけ摘むメソッド
  def pickAnOrange
    @orangeCount = @orangeCount - 1

    if @orangeCount > 0
      puts 'オレンジを一つ摘みました'
      puts 'とてもおいしいオレンジでした'
    else
      puts 'もう木にオレンジは生っていません！'
    end
  end

  # その年に取り残したオレンジが次の年までにすべて落ちてしまうメソッド
  def fallAllOrange
    @orangeCount = 0
    puts '取り残したオレンジはすべて落ちてしまいました'
  end

  # 木がある年または高さになったら死んでしまうメソッド
  # def death
  #   if @treeYear > 100 or @treeHeight > 1000
  #     puts '木は死んでしまいました'
  #     exit
  #   end
  # end
end

orange = OrangeTree.new
3.times do
  orange.oneYearPasses
  puts '実を付けずに1年経ちました'
end
puts
while true
  orange.height
  orange.countTheOranges
  orange.pickAnOrange
  puts ''
  orange.oneYearPasses
  puts ''
  puts '1年が経ちました'
  orange.fallAllOrange
end

# メッセージを任意のタイミングで入れたい場合は、メッセージ表示用のメソッドを別に作ればいい。
# 今回は面倒なのでメソッド内に一緒に書いたが、独立させた方がメソッド呼び出しのタイミングを
# 考える必要がなくて簡単そう。

# もう少し改良の余地がありそうだが一旦この辺で終わりにする。