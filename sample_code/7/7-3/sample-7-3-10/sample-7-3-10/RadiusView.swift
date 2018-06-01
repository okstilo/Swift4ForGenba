//
//  CustomView.swift
//  sample-7-3-10
//
//  Created by Takashi Sawada on 2018/01/20.
//  Copyright © 2018年 Takashi Sawada. All rights reserved.
//

import UIKit

@IBDesignable
class RadiusView : UIView {
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
