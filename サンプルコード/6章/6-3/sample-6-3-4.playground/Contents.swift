// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−3：nilとOptional
// sample-6-3-4.playground

// Optionalで定義した変数str
var str: String? = "Hello, world"

// アンラップを行なっていないため、ワーニングが表示される
print(str)
// Optional(“Hello, world”)

// アンラップを行う一例
if let str = str {
    // "Hello, world"が出力される
    print(str)
}
