//
//  SecondViewController.swift
//  sample-7-2-3
//
//  Created by Takashi Sawada on 2018/01/20.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - 
    @IBAction func onButtonTapped(_ sender: UIButton) {
        
    }
    
    // MARK: -
    @objc func changeTextFirst() {
        myLabel.text = "First"
    }
}
