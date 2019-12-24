## Q31. 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください
# 期待する出力結果
# ゼロ秒思考

class Item
  def initialize(name)
    @name = name
  end

  def name #getterを追加
    @name
  end
end

def q31
  puts __method__
  book = Item.new("ゼロ秒思考")
  puts book.name
  fin
end

## Q32.次の仕様を満たすコードを書いてください

# - 名前、年齢の情報を持った「ユーザークラス」を定義してください
class User_q32
  attr_accessor :name, :age

  def initialize(params)
    @name = params[:name]
    @age  = params[:age]
  end
end

# - 名前、入場料金の情報を持った「動物園クラス」を定義してください
class Zoo
  def initialize(params)
    @name = params[:name]
    @fare = params[:fare]
  end
  # - 入場料金は、幼児(0~5歳)、子供(6~12歳)、成人(13~64歳)、シニア(65~120歳)の4パターン設定してください(金額はお任せします)

  # - 動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す「check_entry_feeメソッド」を定義してください
  # (年齢として無効な値が渡った場合は「無効な値です」と返してください)
  def check_entry_fee(age)
    case age
    when 0..5 then
      puts "幼児料金が適用"
      0
    when 6..12 then
      puts "子供料金が適用"
      800
    when 13..64 then
      puts "大人料金が適用"
      1500
    when 65..120 then
      puts "シニア料金が適用"
      1000
    else 
      puts "年齢が無効な値です" 
    end
  end
end

def q32
  puts __method__
  user = User_q32.new(name: "あじー", age: 32)
  zoo  = Zoo.new(name: user.name, age: user.age)
  puts "#{user.name}の入場料は、¥#{zoo.check_entry_fee(user.age)}です。"
  fin
end

## Q33.  次の指定のキー name, age, address, tell が、Hash値のキーとして過不足無く含まれているかを判定するコードを書いてください
# -例
# {name: "あじー", age: 32, address: "札幌", tell: "090-000-000"}
# このhashに対して実行する場合は true が返る
# {name: "あじー", age: 32, address: "札幌"}
# この場合は指定のキー tell が少ないので false が返る


## Q34.次のコードが成り立つようにコードを書き加えてください
# 出力結果
# ["Ruby", "Php", "Python", "Javascript"]
# ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]

def q34
  puts __method__
  programming_language = ["ruby", "php", "python", "javascript"]
  upper_case_programming_language = programming_language.map{|l| l.upcase}

  p programming_language.map{|l| l.capitalize}
  p upper_case_programming_language
  fin
end

## Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました
# [["田中", "JavaScript"], 30]
# 上記の配列を以下のようなハッシュに変換してください
# {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

