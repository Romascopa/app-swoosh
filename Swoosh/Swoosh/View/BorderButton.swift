//
//  BorderButton.swift
//  Swoosh
//
//  Created by Lance Robbins on 12/12/17.
//  Copyright © 2017 Appcation. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    /* - only want to override draw (rect) for custom drawing, we aren't going to touch!
     - When you override the awakeFromNib you want to call super per Apple documentation
     - Every view (UIView) UIButton inherits from UIView, and it has a layer properly. Apple engineers wrote this for us but the interface builder doesn'tm ake border width and color avialable so we have to do this programatically in this class (so we can re-use this)
 
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
