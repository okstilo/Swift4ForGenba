// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-4.playground

import UIKit

// CGRectのエクステンションの実装の一例
extension CGRect {
    // 中心座標とサイズからCGRectのインスタンスを作る
    init(center: CGPoint, size: CGSize) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: CGPoint(x: originX, y: originY), size: size)
    }
}

let centerRect = CGRect(center: CGPoint(x: 4.0, y: 4.0), size: CGSize(width: 3.0, height: 3.0))
print(centerRect)
