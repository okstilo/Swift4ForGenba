// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-9.playground

// Nil Coalescing演算子の一例
let str: String? = nil
let hello: String = str ?? "hello"
print(hello)
// hello
