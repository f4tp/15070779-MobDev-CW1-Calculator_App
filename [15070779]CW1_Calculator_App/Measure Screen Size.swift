//
//  Measure Screen Size.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 19/11/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import Foundation
import UIKit

var screenSize: CGRect?
var screenWidth:CGFloat?
var screenHeight:CGFloat?
var PhoneScreenType: NSString?


//meausures screen size then assigns a string variable with the phone type. Used to control constraints and other things relative to screen size

public func measureScreenSize(){
    
    screenSize = UIScreen.main.bounds
    screenWidth = screenSize?.width
    screenHeight = screenSize?.height
    
    if (screenWidth == 320.0 && screenHeight == 480.0) {
        PhoneScreenType = "4"
    }
    
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
