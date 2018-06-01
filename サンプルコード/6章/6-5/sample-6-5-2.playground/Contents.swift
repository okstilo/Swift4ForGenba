// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−5：配列
// sample-6-5-2.playgroundw

// 同じ値のみを複数格納する場合の配列の初期化
let array: [String] = ["1", "1", "1", "1", "1", "1", "1", "1", "1", "1"]
print(array)
// [“1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”]

let repeatArray: [String] = Array(repeating: "1", count: 10)
print(repeatArray)
// [“1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”, “1”]
