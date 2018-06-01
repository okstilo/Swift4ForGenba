// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-5.playground

// Dictionary 型を1 つにまとめることが可能
var shutoken: [String:Any] = [
    "Tokyo":true,
    "Kanagawa":false,
    "Saitama":false,
]

var kanto: [String:Any] = [
    "Kanagawa":true,
    "Saitama":true,
    "Chiba":false,
    "Gunma":false,
    "Ibaraki":false,
    "Tochigi": false,
]

// 2つの辞書型データをマージ
kanto.merge(shutoken) { kantoValue, shutokenValue in
    // 競合（同じデータ）があった場合、どのデータを優先するかを返す
    return shutokenValue
}
print(kanto)

/*
 [
 "Tokyo": true,
 "Tochigi": false,
 "Ibaraki": false,
 "Kanagawa": false, // shutokenのデータが反映されている
 "Saitama": false,  // shutokenのデータが反映されている
 "Gunma": false,
 "Chiba": false
 ]
 */
