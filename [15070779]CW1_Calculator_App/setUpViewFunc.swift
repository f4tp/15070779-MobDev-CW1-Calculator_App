//
//  setUpViewFunc.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 30/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import Foundation
import UIKit



public func setupView(){
    
    
    
    var screenSize: CGRect? = UIScreen.main.bounds
    var screenWidth:CGFloat? = screenSize?.width
    var screenHeight:CGFloat? = screenSize?.height
    var PhoneScreenType: NSString?
    

    
    if (screenWidth == 320.0 && screenHeight == 568.0) {
        PhoneScreenType = "5"
    }
    
    if (screenWidth == 375.0 && screenHeight == 667.0) {
        PhoneScreenType = "6.7"
    }
    
    if (screenWidth == 414.0 && screenHeight == 736.0) {
        PhoneScreenType = "6.7.plus"
    }

    
}
