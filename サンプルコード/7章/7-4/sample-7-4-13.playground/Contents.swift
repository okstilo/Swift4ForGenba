// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−4：Swift 4.0の改良点
// sample-7-4-13.playground

import Foundation

struct ConvenienceStore: Codable {
    let name: String
    let enName: String
    let url: URL
}

let sevenEleven = "{\"name\":\"セブンイレブン\",\"enName\":\"Seven Eleven\",\"url\":\"http://www.sej.co.jp/\"}"
let famima = "{\"name\":\"ファミリーマート\",\"enName\":\"Family Mart\",\"url\":\"http://www.family.co.jp/\"}"
let lawson = "{\"name\":\"ローソン\",\"enName\":\"LAWSON\",\"url\":\"http://www.lawson.co.jp/\"}"

let jsonString = "[" + sevenEleven + "," + famima + "," + lawson + "]"

let data:Data = jsonString.data(using: .utf8)!
let convenienceStores = try! JSONDecoder().decode([ConvenienceStore].self, from: data)
print(convenienceStores)

/*
 [
    ConvenienceStore(name: "セブンイレブン", enName: "Seven Eleven", url: http://www.sej.co.jp/),
    ConvenienceStore(name: "ファミリーマート", enName: "Family Mart", url: http://www.family.co.jp/),
    ConvenienceStore(name: "ローソン", enName: "LAWSON", url: http://www.lawson.co.jp/)
 ]
 */
