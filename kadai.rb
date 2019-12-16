#区切り線の挿入
def fin
    puts "======================================="
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







q1
q2
q3
q4
q5


