// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第7章：iOS アプリ開発のためのSwift プログラミング その２
// 7−3：継承と拡張（extension）
// sample-7-3-2.playground

import UIKit

// 計算型プロパティのエクステンションの一例
extension Int {
    // 2倍
    var twice: Int {
        return self * 2
    }
    // 3倍
    var triple: Int {
        return self * 3
    }
    // 2乗
    var sqaure: Double {
        return pow(Double(self), 2)
    }
}

print(5.twice)
print(5.triple)
print(5.sqaure)

extension NSObject {
    class var className: String {
        return String(describing: self)
    }
    
    var className: String {
        return self.className
    }
}

print(UIView.className)
print(NSObject.className)

