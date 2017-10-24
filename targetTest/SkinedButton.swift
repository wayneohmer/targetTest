//
//  DesignableButton.swift
//  targetTest
//
//  Created by Wayne Ohmer on 10/24/17.
//  Copyright © 2017 Wayne Ohmer. All rights reserved.
//

import UIKit

@IBDesignable
class SkinedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        if Skin.sharedSkin.colorDict["buttonColor"] == "Blue" {
            self.backgroundColor = UIColor.blue
        } else if Skin.sharedSkin.colorDict["buttonColor"] == "Green" {
            self.backgroundColor = UIColor.green
        } else {
            self.backgroundColor = UIColor.yellow
        }
    }
    
}
