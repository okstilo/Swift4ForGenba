// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-3.playground

// インデックス取得とあわせて繰り返し処理する場合
let array: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// indexはインデックス、valueはインデックスの順番に格納されている中身です
// index, valueの箇所の変数名は自由に指定することができます
for (index, value) in array.enumerated() {
    print("index: \(index), value:\(value)")
}

/*
 index: 0, value:0
 index: 1, value:1
 index: 2, value:2
 index: 3, value:3
 index: 4, value:4
 index: 5, value:5
 index: 6, value:6
 index: 7, value:7
 index: 8, value:8
 index: 9, value:9
 */
