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
        self.backgroundColor = Skin.sharedSkin.buttonBackgroundColor
        self.setTitleColor(Skin.sharedSkin.buttonTextColor, for: .normal)
    }
    
}
