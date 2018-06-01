// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−7：条件分岐
// sample-6-7-1.playground

// if文を使用した条件分岐の一例
let num: Int = 0
if num > 0 {
    // if文は条件式に当てはまる場合のみ処理を行います
} else if num < 0 {
    // else if文は上部のif文の条件に当てはまらなかった場合のみ判定処理を行います
    // いくつ書いても問題ないですが、あまりに多いと読みにくくなるので注意です
} else {
    // else文は上部のif文に当てはまらなかった場合に必ず処理されます
}

// if let を利用したnilチェック文の一例
var str: String!
if let str: String = str {
    // 出力されない
    print(str)
}

str = "Hello, world"
if let str: String = str {
    // 出力される
    print(str)
}
// Hello, world
