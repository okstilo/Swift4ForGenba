// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−8：クロージャー
// sample-6-8-1.playground

// 関数を定義した場合の一例
// 文字列の配列
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

// 文字列を降順に並び替える処理
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

// 配列のソート関数を使用して、並び替えを行う（判定処理はbackwardで判定）
var reversedNames = names.sorted(by: backward)
print(reversedNames)
// ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
