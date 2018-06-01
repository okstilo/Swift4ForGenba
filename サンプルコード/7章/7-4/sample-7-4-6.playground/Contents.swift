// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-6.playground

// キーとバリューのペアという形で定義されていたらDictionary型への変換が可能
let kanto:[(String, String)] = [("Tokyo", "Tokyo"), ("Kanagawa", "Yokohama"), ("Saitama", "Saitama")]

let shutoken = Dictionary(uniqueKeysWithValues: kanto)
print(shutoken)
/*
 [
    "Kanagawa": "Yokohama",
    "Saitama": "Saitama",
    "Tokyo": "Tokyo"
 ]
 */
