// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第3章：設計
// 3−6：データモデル設計
// sample-3-6-2.playground

import Foundation

// BookModelにメソッドを追加
class BookModel: NSObject {
    var price: Int = 10000          // 価格
    
    // 価格を3桁区切りの文字列で返すメソッド
    func decimalPrice() -> String {
        // NSNumberへ変換（NumberFormatterを使用するため）
        let num: NSNumber = NSNumber(value: price)

        // NumberFormatterのインスタンスを定義
        let numberFormatter = NumberFormatter()

        // 十進法の数値として取り扱う
        numberFormatter.numberStyle = NumberFormatter.Style.decimal

        // 区切りに使用する文字を定義（","で区切る）
        numberFormatter.groupingSeparator = ","

        // 何桁区切りにするか（3桁区切り）
        numberFormatter.groupingSize = 3

        // 変換して返す（10,000を返す）
        return numberFormatter.string(from: num)!
    }
}

let model:BookModel = BookModel()
print(model.decimalPrice())
// 10,000
