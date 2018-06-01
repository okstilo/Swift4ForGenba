// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-3.playground

// クロージャーを少しずつ省略して書いてみます
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
var nameArray:[String] = []

// 通常のクロージャーの書き方
nameArray = names.sorted(by: { (s1: String, s2: String) -> Bool
    in
    return s1 > s2
})
print(nameArray)

// 1行でまとめる
nameArray = names.sorted(by: { (s1: String, s2: String) -> Bool
    in return s1 > s2 } )
print(nameArray)

// 省略できる箇所を省略する
// 引数、返り値の型は型推論でわかっているので、省略可能
nameArray = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(nameArray)

// 戻り値は暗黙に返すため、省略可能
nameArray = names.sorted(by: { s1, s2 in s1 > s2 } )
print(nameArray)

// $0などの書き方で引数の定義自体を省略可能。
// $0, $1, $2と引数は自動的に略式で書くことができる
nameArray = names.sorted(by: { $0 > $1 } )
print(nameArray)

// オペレーター関数を使うとここまで省略が可能
nameArray = names.sorted(by: >)
print(nameArray)

