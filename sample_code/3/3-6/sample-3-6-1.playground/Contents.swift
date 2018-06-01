// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第3章：設計
// 3−6：データモデル設計
// sample-3-6-1.playground

import Foundation

// 本のデータモデル・Book
struct Book {
    let name: String
    let author: String
    let price: Int
    let publisher: String
    let publishDate: Date
    let isbn: String
    let size: String
    let page: Int
}
