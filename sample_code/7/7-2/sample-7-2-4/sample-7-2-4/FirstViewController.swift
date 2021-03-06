//
//  FirstViewController.swift
//  sample-7-2-3
//
//  Created by Takashi Sawada on 2018/01/20.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // NotificationCenterのインスタンス生成
        let defaultCenter = NotificationCenter.default
        
        // SecondViewControllerからの通知を受ける設定
        defaultCenter.addObserver(self,
                                  selector: #selector(changeTextSecond),
                                  name: NSNotification.Name(rawValue: "ChangeTextSecond"),
                                  object: nil)
    }
    
    // MARK: -
    @IBAction func onButtonTapped(_ sender: UIButton) {
        // 画面のラベルのテキストを変える
        myLabel.text = "First"
        
        // 別の画面のラベルのテキストを変えるため、通知する
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ChangeTextFirst"), object: nil)
    }
    
    // MARK: -
    @objc func changeTextSecond() {
        myLabel.text = "Second"
    }
}
