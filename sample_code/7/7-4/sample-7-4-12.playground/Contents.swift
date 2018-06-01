// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-12.playground

import Foundation

// Codableを利用してJSONのパースを行う
struct ConvenienceStore: Codable {
    let name: String
    let enName: String
    let url: URL
}

let jsonString = "{\"name\":\"セブンイレブン\",\"enName\":\"Seven Eleven\",\"url\":\"http://www.sej.co.jp/\"}"
let data:Data = jsonString.data(using: .utf8)!

let convenienceStore = try! JSONDecoder().decode(ConvenienceStore.self, from: data)
print(convenienceStore)
// ConvenienceStore(name: "セブンイレブン", enName: "Seven Eleven", url: http://www.sej.co.jp/)
