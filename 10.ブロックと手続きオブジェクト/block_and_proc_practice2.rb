require 'pry'
require 'pry-byebug'

# ロガー改良、入れ子の段階によって字下げする

# グローバル変数を用意、今回はインデント
# 同じフォルダの「インデントの実験」ファイルでインデントの入れ方がわかったのでそれを使う
# と思ったけど、グローバル変数だと手続きオブジェクトを呼び出すたびに+1された値が保存されて
# しまうので使い勝手が悪い。ローカル変数を使えばいいんだけど、それだといちいちブロックに
# ローカル変数を定義するのがだるい。どっちもどっちな気がする。

$global = 0 # 入れ子が0段階の時
$nestingDepth = 1 # 入れ子が1段階のとき
$bigTopPeeWee = 2 # 入れ子が2段階のとき

# $global = '' # 入れ子が0段階の時
# $nestingDepth = '  ' # 入れ子が1段階のとき
# $bigTopPeeWee = '    ' # 入れ子が2段階のとき

def log &block
  puts '  ' * $global + '開始 "外ブロック"...'

  block.call

  puts '  ' * $global + '..."外ブロック" 終了, 返り値は: false'
end

def log2 &block2
  # $nestingDepth = $nestingDepth + 1

  log do
    puts '  ' * $nestingDepth + '開始 "ある小さなブロック"...'

    block2.call

    puts '  ' * $nestingDepth + '..."ある小さなブロック" 終了, 返り値は: ' + rand(101).to_s

    puts '  ' * $nestingDepth + '開始 "もうひとつのブロック"...'
    puts '  ' * $nestingDepth + '..."もうひとつのブロック" 終了, 返り値は: I love Indian food!!'
  end
end

log2 do
  puts '  ' * $bigTopPeeWee + '開始 "ちっちゃなブロック"...'
  puts '  ' * $bigTopPeeWee + '..."ちっちゃなブロック" 終了, 返り値は: lots of love'
end
