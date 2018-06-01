// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−6：繰り返し処理
// sample-6-6-5.playground

// 辞書型データの繰り返し処理
let dictionary: Dictionary = ["first": 1 , "second": 2, "third": 3, "fourth": 4]

for i in dictionary {
    print(i)
}

// (key: “second”, value: 2)
// (key: “fourth”, value: 4)
// (key: “third”, value: 3)
// (key: “first”, value: 1)
