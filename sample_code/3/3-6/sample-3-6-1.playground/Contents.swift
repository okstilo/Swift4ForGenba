// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第3章：設計
// 3−6：データモデル設計
// sample-3-6-1.playground

import Foundation

// 本のデータモデル・BookModel
class BookModel: NSObject {
    var name: String = ""           // 書籍名
    var author: String = ""         // 著者名
    var price: Int = 0              // 価格
    var publisher: String = ""      // 出版社
    var publishDate: String = ""    // 発行年月日
    var ISBN: String = ""           // ISBN
    var size: String = ""           // サイズ
    var page: Int = 0               // ページ数
}
