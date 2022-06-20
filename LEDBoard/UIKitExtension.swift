//
//  DesignableButton.swift
//  LEDBoard
//
//  Created by JongHyuk Park on 2022/06/21.
//

import UIKit

@IBDesignable
extension UIView {
    @IBInspectable var borderColor : UIColor {
        set {
            self.layer.borderColor = newValue.cgColor
        }
        get {
            let color = self.layer.borderColor ?? UIColor.clear.cgColor
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var borderWidth : CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat {
        set {
            self.layer.cornerRadius = newValue
        }
        get {
            return self.layer.cornerRadius
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
}


//@IBDesignable
//class DesignButton : UIButton {
//    @IBInspectable var borderColor : UIColor {
//        set {
//            self.layer.borderColor = newValue.cgColor
//        }
//        get {
//            let color = self.layer.borderColor ?? UIColor.clear.cgColor
//            return UIColor(cgColor: color)
//        }
//    }
//
//    @IBInspectable var borderWidth : CGFloat {
//        set {
//            self.layer.borderWidth = newValue
//        }
//        get {
//            return self.layer.borderWidth
//        }
//    }
//
//    @IBInspectable var cornerRadius : CGFloat {
//        set {
//            self.layer.cornerRadius = newValue
//        }
//        get {
//            return self.layer.cornerRadius
//        }
//    }
//    /*
//    // Only override draw() if you perform custom drawing.
//    // An empty implementation adversely affects performance during animation.
//    override func draw(_ rect: CGRect) {
//        // Drawing code
//    }
//    */
//
//}
