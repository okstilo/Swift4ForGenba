// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-8.playground

// fruitsのIntの数値を全て2 倍にする処理の一例
let fruits:[String:Int] = ["りんご":150, "バナナ":100, "みかん":80]
print(fruits)

var mapped = [String:Int]()
fruits.forEach { element in
    mapped[element.key] = element.value * 2
}
print(mapped)
