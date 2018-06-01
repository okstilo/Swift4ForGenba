// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-9.playground

// fruitsのIntの数値を2 倍にする処理をmapValuesで実施した一例
let fruits:[String:Int] = ["りんご":150, "バナナ":100, "みかん":80]
print(fruits)
// ["みかん": 80, "りんご": 150, "バナナ": 100]

let stored = fruits.mapValues({ $0 * 2 })
print(stored)
// ["みかん": 160, "りんご": 300, "バナナ": 200]
