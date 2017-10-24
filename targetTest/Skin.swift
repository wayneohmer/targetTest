//
//  Skin.swift
//  targetTest
//
//  Created by Wayne Ohmer on 10/24/17.
//  Copyright © 2017 Wayne Ohmer. All rights reserved.
//

import UIKit

class Skin {
    
    enum SkinColors: String {
        case black, white, blue, pink
        
        func color() -> UIColor {
            switch self {
            case .black:
                return UIColor.black
            case .white:
                return UIColor.white
            case .blue:
                return UIColor.blue
            case .pink:
                return UIColor(red:1, green:0.718, blue:0.757, alpha: 1)
            }
        }
    }
    
    static let sharedSkin = Skin()
    
    var buttonBackgroundColor = UIColor(red:0, green:0.714, blue:0.851, alpha: 1)
    var buttonTextColor = UIColor.white
    
    init() {
        var colorsDict:[String:String]? = nil
        
        if let path = Bundle.main.path(forResource: "blueColors", ofType: "plist") {
            let colorsPlistDict = NSDictionary(contentsOfFile: path)
            colorsDict = colorsPlistDict as? [String:String]
        } else if let path = Bundle.main.path(forResource: "pinkColors", ofType: "plist") {
            let colorsPlistDict = NSDictionary(contentsOfFile: path)
            colorsDict = colorsPlistDict as? [String:String]
        }
        if let colorsDict = colorsDict {
            self.buttonBackgroundColor = SkinColors(rawValue:colorsDict["buttonBackgroundColor"] ?? "")?.color() ?? UIColor.clear
            self.buttonTextColor = SkinColors(rawValue:colorsDict["buttonTextColor"] ?? "")?.color() ?? UIColor.clear
        }
    }
    
}
