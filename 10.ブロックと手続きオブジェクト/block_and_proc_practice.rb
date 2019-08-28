require 'pry'
require 'pry-byebug'

# 手続きオブジェクトを変数に保存したりメソッドに渡す

def grandpaClock &block
  chimeCount = Time.now.hour + 1 # 0～23を1～12に変換

  if chimeCount > 12
    chimeCount = chimeCount - 12
  end

  chimeCount.times do
    block.call
  end

end

grandpaClock do
  puts 'DONG!'
end


# プログラムロガー
# 入れ子（ネスト）構造にする
def log &block2
  block2.call
end

def log2 &block3
  log do
    puts '開始 "外ブロック"...'
    block3.call
    puts '..."外ブロック" 終了, 返り値は: false'
  end
end

log2 do
  puts '開始 "ある小さなブロック"...'
  puts '..."ある小さなブロック" 終了, 返り値は: ' + rand(6).to_s
  puts '開始 "もうひとつのブロック"...'
  word = gets.chomp
  puts '..."もうひとつのブロック" 終了, 返り値は: ' + word
end
