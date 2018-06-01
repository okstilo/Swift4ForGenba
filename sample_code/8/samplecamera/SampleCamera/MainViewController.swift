//
//  MainViewController.swift
//  SampleCamera
//
//  Created by Takashi Sawada on 2018/01/25.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

// UIImagePickerControllerDelegate,UINavigationControllerDelegateを追加しておく
class MainViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var myImageView: UIImageView!    // 追加したアウトレット
    @IBOutlet weak var myLabel: UILabel!    // 追加したアウトレット
    
    var myImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    }
    
    @IBAction func onEditButtonTapped(_ sender: UIBarButtonItem) {
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
}
