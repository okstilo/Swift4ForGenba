// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−9：タプル
// sample-6-9-2.playground

// タプルの使い方の一例
func convertTuple(value:Int) -> (str: String, sum: Int) {
    return ("\(value)", value * 2)
}

let tuple = convertTuple(value: 10)
print(tuple.str) // "10"
print(tuple.sum) // 20
