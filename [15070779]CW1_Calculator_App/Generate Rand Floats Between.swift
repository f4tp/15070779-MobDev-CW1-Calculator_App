//
//  Generate Rand Floats Between.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 06/11/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import Foundation
import UIKit

public func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
    return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
}
