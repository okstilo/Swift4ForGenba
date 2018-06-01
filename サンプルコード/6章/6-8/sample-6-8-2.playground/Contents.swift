// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-2.playground

// クロージャーを使った一例
// 文字列の配列
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// 配列のソート関数を使用して、並び替えを行う（判定処理はクロージャーで記載）
var reversedNames = names.sorted(by: {
    (s1:String, s2:String) -> Bool in
    return s1 > s2
})
print(reversedNames)
// ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
