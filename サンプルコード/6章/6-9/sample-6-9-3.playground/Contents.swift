// 現場のためのSwift4 ~iOSアプリ開発に不可欠な実戦スキルのすべて~
// サンプルコード
// 第6章：iOSアプリ開発のためのSwiftプログラミング その1
// 6−9：タプル
// sample-6-9-3.playground

// switch を利用したタプルの活用例 その1
let scores = (englishScore: 80, mathScore: 30)

switch scores {
case (let english, let math) where english > 70 && math > 70:
    print("合格！")
    
case (let english, let math) where english > 70 || math > 70:
    print("片方が良い点だから、次は両方とも良い点が取れるといいね！")
    
case (let english, let math) where english < 50 || math < 50:
    print("もう少しがんばろう！")
    
default:
    print("")
}
// 片方が良い点だから、次は両方とも良い点が取れるといいね！
