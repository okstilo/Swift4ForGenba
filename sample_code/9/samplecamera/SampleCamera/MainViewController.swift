//
//  MainViewController.swift
//  SampleCamera
//
//  Created by Takashi Sawada on 2018/01/25.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// UIImagePickerControllerDelegate,UINavigationControllerDelegateを追加しておく
// "FilterListViewControllerDelegate"を追加
class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, FilterListViewControllerDelegate {

    @IBOutlet weak var myImageView: UIImageView!    // 追加したアウトレット
    @IBOutlet weak var myLabel: UILabel!    // 追加したアウトレット
    
    var myImage: UIImage!
    var selectedIndex: Int = 0    // 選択したフィルターの順番を保持しておく変数
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Storyboardで設定した遷移時に実装されるメソッド
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 念のため、識別子をチェック
        if segue.identifier == "MoveFilterListView" {
            // 遷移先のFilterListViewControllerのインスタンスを取得
            let controller: FilterListViewController = segue.destination as! FilterListViewController
            
            // デリゲート先をMainViewControllerに指定
            controller.delegate = self
            
            // 選択している番号を渡す
            controller.selectedIndex = selectedIndex
        }
    }

    // MARK: -
    @IBAction func onCameraButtonTapped(_ sender: UIBarButtonItem) {
        let controller: UIAlertController = UIAlertController(title: "", message: "どの方法で写真を読み込みますか？", preferredStyle: UIAlertControllerStyle.actionSheet)
        // 1つ目の選択肢
        controller.addAction(UIAlertAction(title: "写真を撮影する", style: UIAlertActionStyle.default, handler: { (action) in
            self.selectedCamera()
        }))
        // 2つめの選択肢
        controller.addAction(UIAlertAction(title: "カメラロールから読み込む", style: UIAlertActionStyle.default, handler: { (action) in
            self.selectedLibrary()
        }))
        // キャンセルボタンを用意。自動的に用意されるわけではないので、手動で追加する
        controller.addAction(UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.cancel, handler:nil))
        // UIAlertControllerを表示する
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func onSaveButtonTapped(_ sender: UIBarButtonItem) {
        // 画像が設定されていない場合
        if myImageView.image == nil  {
            // 先に写真を選択して欲しいとアラートを表示する
            let controller: UIAlertController = UIAlertController(title: "", message: "写真が選ばれていません。まず右上のボタンから写真を読み込んでください", preferredStyle: .alert)
            controller.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
            self.present(controller, animated: true, completion: nil)
            return
        }

        // UIImageWriteToSavedPhotosAlbumで画像を端末に保存する
        UIImageWriteToSavedPhotosAlbum(myImageView.image!, self, #selector(self.showResultSavedImage(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    @IBAction func onEditButtonTapped(_ sender: UIBarButtonItem) {
        // 画像が設定されていない場合
        if myImageView.image == nil  {
            // 先に写真を選択して欲しいとアラートを表示する
            let controller: UIAlertController = UIAlertController(title: "", message: "写真が選ばれていません。まず右上のボタンから写真を読み込んでください", preferredStyle: .alert)
            controller.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
            self.present(controller, animated: true, completion: nil)
            return
        }

        performSegue(withIdentifier: "MoveFilterListView", sender: nil)
    }
    
    // MARK: - UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // 撮影、選択した写真が正しく取得できたかをチェック
        // UIImagePickerControllerOriginalImageで取得した写真を取り出せる
        if let editedImage: UIImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            // UIImageViewに画像をセット
            myImageView.image = editedImage
            
            // オリジナルデータをセット
            myImage = editedImage
            
            // 新規で画像を読み込んだ場合、選択したフィルターの番号はリセット
            selectedIndex = 0
        }
        // 画像が正しく表示されるようであれば、注意書きを消す
        if myImageView.image != nil {
            myLabel.isHidden = true
        }
        // UIImagePickerControllerを閉じる
        picker.dismiss(animated: true, completion: nil)
    }
    
    // MARK: -
    func selectedCamera() {
        // カメラが使用できるかをチェック
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            // UIImagePickerControllerのインスタンスを生成
            let picker:UIImagePickerController = UIImagePickerController()
            
            // カメラを起動する
            picker.sourceType = UIImagePickerControllerSourceType.camera
            
            // UIImagePickerControllerDelegateを自身に設定
            picker.delegate = self
            
            // UIImagePickerController（カメラ画面）を表示
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    func selectedLibrary() {
        // 写真のライブラリが読み込めるかをチェック
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            // UIImagePickerControllerのインスタンスを生成
            let picker:UIImagePickerController = UIImagePickerController()
            
            // カメラロールから写真を読み込む
            picker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            
            // UIImagePickerControllerDelegateを自身に設定
            picker.delegate = self
            
            // UIImagePickerController（写真の読み込み画面）を表示
            self.present(picker, animated: true, completion: nil)
        }
    }
    
    // MARK: - FilterListViewControllerDelegate
    func filterListViewController(_ controller: FilterListViewController, didSelectFilter filter: String, index: Int) {
        // 選択したフィルターの順番を保持しておく
        selectedIndex = index
        
        // フィルター加工しない場合はオリジナルを表示する
        if filter.isEmpty {
            // 選択した番号は0を入れる
            selectedIndex = 0
            
            // 画像は保持しているオリジナル画像をセットする
            myImageView.image = myImage
            
            // 処理はここで終了
            return
        }
        
        // フィルターを設定する
        let filter: CIFilter = CIFilter(name: filter)!
        
        // 画像をCIImageへ変換
        let ciImage: CIImage = CIImage(image: myImage!)!
        
        // CIImageにフィルターを適用
        filter.setValue(ciImage, forKey: kCIInputImageKey)
        
        // フィルターを適用した画像を出力できるかチェック
        if let filteredImage :CIImage = filter.outputImage {
            // コンテキストの準備
            let context = CIContext(options: nil)
            
            // CGImage作成
            let cgiImage = context.createCGImage(filteredImage, from: filteredImage.extent)
            
            // CGImageをUIImageへ変換
            // 写真の向きを調整
            let image = UIImage(cgImage: cgiImage!,
                                scale: UIScreen.main.scale,
                                orientation: myImage.imageOrientation)
            
            myImageView.image = image
        }
    }

    // 保存を試みた結果をダイアログで表示
    @objc func showResultSavedImage(_ image: UIImage, didFinishSavingWithError error: NSError!, contextInfo: UnsafeMutableRawPointer) {
        // 表示するメッセージ用の変数を用意
        var title:String = "保存完了！"
        var message:String = "カメラロールに画像を保存しました"
        
        // 保存が行えなかった場合にはエラーメッセージを表示
        if error != nil {
            title = "エラー"
            message = "保存に失敗しました。設定アプリでプライバシー設定を確認してください"
        }
        
        let controller: UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        controller.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        self.present(controller, animated: true, completion: nil)
    }
}
