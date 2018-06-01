// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−9：タプル
// sample-6-9-4.playground

import UIKit

// switch を利用したタプルの活用例 その2
let indexPath = IndexPath(row: 1, section: 2)
let cell: UITableViewCell = UITableViewCell()

switch (indexPath.section, indexPath.row) {
// _ でワイルドカードの指定。値は何でもOK
case (0, _):
    cell.textLabel?.text = "最初のセクション"
case (1, let row) where row > 3:
    cell.textLabel?.text = "これはテストです"
case (1, let row) where row <= 3:
    cell.textLabel?.text = "これはTESTです"
case (let section, _) where section < 4:
    cell.textLabel?.text = "ここのセクションは\(section)です"
case (_ , _):
    cell.textLabel?.text = "ここから先はあまり触らないでください"
}
print(cell.textLabel!.text!)
// ここのセクションは2です
