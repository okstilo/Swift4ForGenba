// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第3章：設計
// 3−6：データモデル設計
// sample-3-6-2.playground

import Foundation

struct Book {
    let price: Int
    
    var decimalPriceString: String {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.groupingSeparator = ","
        nf.groupingSize = 3
        return nf.string(from: NSNumber(value: price))!
    }
}

let book = Book(price: 10000)
print(book.decimalPriceString)
// 10,000
