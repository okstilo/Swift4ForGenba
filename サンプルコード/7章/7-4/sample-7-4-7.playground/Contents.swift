// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-7.playground

// Swift4.0のDictionary のfilter の挙動
let convenienceStore:[(String, String)] = [("セブンイレブン", "711"),
                                           ("ローソン", "LAWSON"),
                                           ("ファミリーマート", "Family Mart"),
                                           ("サンクス", "Sunkus"),
                                           ("サークルK", "Circle K"),
                                           ("ミニストップ", "MINISTOP"),
                                           ("デイリーヤマザキ", "Dairy YAMAZAKI")]

let storeDictionary = Dictionary(uniqueKeysWithValues: convenienceStore)

// 辞書型データに対して条件に当てはまるものを抽出
let filtered = storeDictionary.filter { $0.key.contains("ン") }
print(filtered)

/*
 [
    "セブンイレブン": "711",
    "ローソン": "LAWSON",
    "サンクス": "Sunkus"
 ]
 */
