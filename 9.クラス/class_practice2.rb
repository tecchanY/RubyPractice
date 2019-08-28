require 'pry'
require 'pry-byebug'

class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuffInBelly = 10 # 最初、赤ちゃんドラゴンはお腹いっぱい
    @stuffInIntestine = 0 # トイレはまだ大丈夫（Bellyは胃、Intestineは腸）

    puts @name + 'は生まれました'
  end

  def feed
    puts 'あなたは　' + @name + 'に食べ物を与えます'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'あなたは　' + @name + 'をトイレに連れていきます'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'あなたは　' + @name + 'を寝かしつけます'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + '　はいびきをかいて、部屋中煙だらけ'
      end
    end
    if @asleep
      @asleep = false
      puts @name + '　はゆっくり目を覚ます'
    end
  end

  def toss
    puts 'あなたは　' + @name + 'を空中に投げ上げます'
    puts '彼はキャハキャハ笑い、あなたの眉毛は焼け焦げた'
    passageOfTime
  end

  def rock
    puts 'あなたは　' + @name + 'を優しく揺すります'
    @asleep = true
    puts '彼は短くうとうと…'
    passageOfTime
    if @asleep
      @asleep = false
      puts '…でもやめるとすぐ起きちゃう'
    end
  end

  def talk word
    @word = word
    if @word == 'feed'
      feed
    elsif @word == 'walk'
      walk
    elsif @word == 'putToBed'
      putToBed
    elsif @word == 'toss'
      toss
    elsif @word == 'rock'
      rock
    else
      puts '適切なコマンドを入力してください'
    end
  end

private

  #  "private"というのは、ここで定義されているメソッドが
  #  オブジェクト内部のものであるという意味です。
  #  (あなたはドラゴンにえさを与えることはできますが、
  #  おなかがすいているかどうかを訊くことはできません。)
  # ドラゴンに対してある特定のメソッドだけを行うことができて、
  # それ以外はドラゴン内部で起こるようにする、 という制限をつけたい時に必要です。

def hungry?
  #  メソッドの名前は"?"で終わることができます。
  #  通常、メソッドがtrueかfalseのどちらかを返すときだけ、
  #  この名前を使います。このように:
  @stuffInBelly <= 2
end

def poopy?
  # ウンチが出そう？
  @stuffInIntestine >= 8
end

def passageOfTime
  if @stuffInBelly > 0
    # 食べたものは、胃から腸へ移動
    @stuffInBelly = @stuffInBelly - 1
    @stuffInIntestine = @stuffInIntestine + 1
  else # ドラゴンは飢えました！！
    if @asleep
      @asleep = false
      puts '彼は突然跳び起きます！'
    end
    puts @name + ' は飢え死にしそう!  死に物狂いの彼は"あなた"を食べてしまいました!'
    exit # プログラムは終了します
  end

  if @stuffInIntestine >= 10
    @stuffInIntestine = 0
    puts 'おっと！　' + @name + 'はやっちゃったようです…'
  end

  if hungry?
    if @asleep
      @asleep = false
      puts '彼は突然起きます！'
    end
    puts @name + 'のおなかはゴロゴロ言ってます…'
  end

  if poopy?
    if @asleep
      @asleep = false
      puts '彼は突然起きます！'
    end
    puts @name + '　はウンチがしたくて踊っています…'
  end

end

end

pet = Dragon.new 'Norbert'
# ドラゴンと会話するので、入力内容をパブリックインターフェース（privateじゃないメソッド）に送る
10.times do
  puts
  puts 'コマンドを入力してください'
  word = gets.chomp
  pet.talk word
end
# pet.feed
# pet.toss
# pet.walk
# pet.putToBed
# pet.rock
# pet.putToBed
# pet.putToBed
# pet.putToBed
# pet.putToBed