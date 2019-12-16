#区切り線の挿入
def fin
    puts "==============================================="
end

# Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5] => [1, 3, 5, 7, 9]
def q1
    puts __method__ 
    arr_1 = [1,2,3,4,5] 
    p arr_1.map {|item| item*2 -1}
    fin
end

# Q2. 以下の配列から、期待された結果の配列を作成してください
#["田中", "佐藤", "佐々木", "高橋"] => ["田中", "佐藤", "佐々木", "高橋", "斎藤"]
def q2
    puts __method__
    users = ["田中", "佐藤", "佐々木", "高橋"]
    #要素の追加は　<<　又は push　を使用
    p users << "斎藤"
    # p users.push("斎藤")
    fin
end

# Q3. 以下の文字列の配列を数字だけの配列に変換してください
#["1", "2", "3", "4", "5"] =>[1, 2, 3, 4, 5]

def q3
    puts __method__
    arr_1 = ["1", "2", "3", "4", "5"]
    p arr_1.map(&:to_i)
    fin
end

#Q4. 以下の二つの配列を合体させた新しい配列を作成してください
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

#Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください
def q5
    puts __method__
    arr_1 = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
    p arr_1.count(3)
    fin
end

#Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください
def q6(arr)
    puts __method__
    #検証用
    # puts "#{arr}is empty?:#{arr.empty?}"
    puts arr.empty?
    fin
end

q6([])
q6([1, 5, 8, 10])

#Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください
def q7(input)
    puts __method__
    #検証用
    # puts "#{input}is Array?:#{input.kind_of?(Array)}"
    puts input.kind_of?(Array)
    fin
end

q7([])
q7({})

#Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください
    # numbers = ["6", "5", "3", "7", "1"]
    # p numbers.map {|item| item.to_i }
    # -> [6, 5, 3, 7, 1]

def q8
    puts __method__
    numbers = ["6", "5", "3", "7", "1"]
    arr = []
    numbers.each {|item| arr << item.to_i}
    p arr
    fin
end

q8

#Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
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

q9

#Q10. 以下の配列の最後に山下を追加してください
def q10
    puts __method__
    members = ["田中", "佐藤", "佐々木", "高橋"]
    p members << "山下"
end

q10