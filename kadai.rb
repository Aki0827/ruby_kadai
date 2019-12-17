# ruby-style-guideを極力意識して書く様に意識する
# https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md

# TODO: rubocop implementation, configuration
# https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby

# 区切り線の挿入
def fin
  puts "==============================================="
end

# Q1. 以下の配列から、期待された結果の配列を作成してください　（完了）
# [1, 2, 3, 4, 5] => [1, 3, 5, 7, 9]
def q1
  puts __method__ 
  arr1 = [1,2,3,4,5] 
  p arr1.map { |item| item * 2 - 1 }
  fin
end

# Q2. 以下の配列から、期待された結果の配列を作成してください　（完了）
#["田中", "佐藤", "佐々木", "高橋"] => ["田中", "佐藤", "佐々木", "高橋", "斎藤"]
def q2
  puts __method__
  users = ["田中", "佐藤", "佐々木", "高橋"]
  #要素の追加は　<<　又は push　を使用
  p users << "斎藤"
  # p users.push("斎藤")
  fin
end

# Q3. 以下の文字列の配列を数字だけの配列に変換してください　（完了）
#["1", "2", "3", "4", "5"] =>[1, 2, 3, 4, 5]

def q3
  puts __method__
  arr_1 = ["1", "2", "3", "4", "5"]
  p arr_1.map(&:to_i)
  fin
end

#Q4. 以下の二つの配列を合体させた新しい配列を作成してください　（完了）
#["dog", "cat", "fish"]
#["bird", "bat", "tiger"]
def q4
  puts __method__
  arr_1 = ["dog", "cat", "fish"]
  arr_2 = ["bird", "bat", "tiger"]
  #配列の合体
  p arr_1 + arr_2
  fin
end

#Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください　（完了）
def q5
  puts __method__
  arr_1 = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
  p arr_1.count(3)
  fin
end

#Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください （完了） 
def q6(arr)
  puts __method__
  #検証用
  # puts "#{arr}is empty?:#{arr.empty?}"
  puts arr.empty?
  fin
end

#Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください （完了）
def q7(input)
  puts __method__
  #検証用
  # puts "#{input}is Array?:#{input.kind_of?(Array)}"
  puts input.kind_of?(Array)
  fin
end

#Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください （完了）
    # numbers = ["6", "5", "3", "7", "1"]
    # p numbers.map {|item| item.to_i }
    # -> [6, 5, 3, 7, 1]

def q8
  puts __method__
  numbers = ["6", "5", "3", "7", "1"]
  arr = []
  numbers.each { |item| arr << item.to_i }
  p arr
  fin
end

#Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください （完了）
# ["田中", "佐藤", "佐々木", "高橋"]
# 会員No.1 田中さん
# 会員No.2 佐藤さん
# 会員No.3 佐々木さん
# 会員No.4 高橋さん
def q9
  puts __method__
  members = ["田中", "佐藤", "佐々木", "高橋"]
  members.each.with_index(1) do |member, i|
    puts "会員No.#{i} #{member}さん"
  end
  fin
end

#Q10. 以下の配列の最後に山下を追加してください （完了）
def q10
  puts __method__
  members = ["田中", "佐藤", "佐々木", "高橋"]
  p members << "山下"
  fin
end

# Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
# favorite_sport = ["フットサル", "バスケット"]
# selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]

def q11
  puts __method__
  favorite_sport = ["フットサル", "バスケット"]
  selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
  p favorite_sport & selected_sport
  fin
end

q11

# Q12 以下の配列を用いた繰り返し処理において、「うに」が含まれていれば「好物です」と表示し、そうでなければ「まぁまぁ好きです」と表示するようにコードを書いてください
# ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]

def q12
  puts __method__
  sushi_netas = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
  sushi_netas.each do |neta|
    # 3項演算子ver
    like = neta.include?("うに") ? "#{neta}: 好物です" : "#{neta}: まぁまぁ好きです"
    puts like
    # 3項演算子不使用 
    # if neta.include?("うに")
    #   puts "#{neta}: 好物です"   
    # else
    #   puts "#{neta}: まぁまぁ好きです"         
    # end
  end
  fin
end

q12

# Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
# [1, 2, 3, 4, 5]

def q13
  puts __method__
  arr = [1, 2, 3, 4, 5]
  p arr.select {|num| num.odd?}
  fin
end

q13

## Q14. 以下の配列からnilの要素を削除してください
# ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

def q14
  puts __method__
  arr = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
  p arr.compact
  fin
end

q14

## Q15. 以下の配列からadminの数を数えてください
# ["admin", "user", "user", "admin", "admin"]
def q15
  puts __method__
  arr = ["admin", "user", "user", "admin", "admin"]
  search = "admin"
  puts "#{search}の数: #{arr.count(search)}"
  fin
end

q15