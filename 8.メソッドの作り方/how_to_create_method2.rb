require 'pry'
require 'pry-byebug'

# たとえば22のようなひとつの数をもらって、 その英語読みの文字列(この場合'twenty-two'のような)を返します。
# とりあえず、0から100までの整数についてだけ 働くようにしましょう。
def englishNumber(number)
  return '負でない数を入力してください.' if number < 0 #  負の数は不可です。
  return 'zero' if number == 0

  #  もう、上限として特別の場合は設けません。余分なreturnもなし。

  numString = '' #  これが最終的に返す文字列です。

  onesPlace = %w[one two three four five
                 six seven eight nine]
  tensPlace = %w[ten twenty thirty forty fifty
                 sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen fourteen fifteen
                 sixteen seventeen eighteen nineteen]

  #  上のほうの桁から表示させていって、"left" には
  #  まだ残っている数を入れます。
  #  "write" にはこれからすぐに出力させるための
  #  一桁分の数を入れます。
  #  write と left... 良いですか? :)

  left  = number
  write = left / 100 #  百の桁以上の桁をwriteに入れます。
  left -= write * 100 #  下2桁をleftに残します。

  if write > 0
    #  さて、ここでちょっとしたトリックを使います。

    hundreds = englishNumber write
    numString = numString + hundreds + ' hundred'

    #  これは「再帰法」と呼ばれる技です。さて何をやって
    #  いるのでしょう? 上の行ではメソッドの中で自分自身
    #  (訳註：つまり"englishNumber")を呼ぶように指示して
    #  います。ただし、引数として"number"の代わりに
    #  "write"を指定しています。
    #  ここで、"write"が(この時点では)、最終的に英語で
    #  出力すべき数の百の位以上の数であるということを
    #  思い出してください。
    #  2行目では、"hundreds"を"numString"の後に追加して、
    #  さらに、' hundred'という文字列を追加しています。
    #  具体的に言うと、たとえば、最初に引数を1999とする
    #  と(つまり、"number" = 1999)、englishNumberを呼ぶ
    #  ところでは、"write"に19が入っており、"left"には99が
    #  入っています。ここで最も怠惰な考えとしては、
    #  englishNumberがまず'nineteen'を出力して、その後に
    #  ' hundred'を出力し、最後に残りの'ninety-nine'を
    #  englishNumberが出力してくれれば良いわけです。

    if left > 0
      #  この時、'two hundredfifty-one'のように
      #  ならないためにスペースを入れます。
      numString += ' '
    end
  end

  write = left / 10 #  今度は十の桁です。
  left -= write * 10 #  そして十の桁を引きます。

  if write > 0
    if (write == 1) && (left > 0)
      #  英語では12は"twelve"であって、"tenty-two"と
      #  言うわけには行きません。そこで、十の桁が1の
      #  ときは特別扱いしなければなりません。

      numString += teenagers[left - 1]

      #  この"-1" は、teenagers[3] が 'fourteen'で
      #  あって、'thirteen'ではないため必要です。
      #  writeが1の場合、一の桁に関してはもう処理して
      #  しまっていますので、もう出力する必要は
      #  ありません。

      left = 0
    else
      numString += tensPlace[write - 1]

      #  この"-1" も、tensPlace[3] が'forty'で'thirty'ではない
      #  ため必要。
    end

    if left > 0
      #  'sixtyfour'とは書かずに、途中にハイフンを入れます。
      numString += '-'
    end
  end

  write = left  #  ここで、一の桁を書き出します。
  left = 0      #  この桁を引きます。(0になります。)

  if write > 0
    numString += onesPlace[write - 1]
    #  この"-1"はonesPlace[3]が'four'であって
    #  'three'ではないから必要。
  end

  #  最後に"numString"を返します。
  numString
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(1000000000000)
