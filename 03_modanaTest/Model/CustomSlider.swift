//
//  CustomSlider.swift
//  03_modanaTest
//
//  Created by Chrissy Satyananda on 17/08/19.
//  Copyright © 2019 Odjichrissy. All rights reserved.
//

import UIKit

class CustomSlider: UISlider {
    
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        let customBounds = CGRect(origin: bounds.origin, size: CGSize(width: bounds.size.width, height: 12.0))
        super.trackRect(forBounds: customBounds)
        return customBounds
    }
    
}
