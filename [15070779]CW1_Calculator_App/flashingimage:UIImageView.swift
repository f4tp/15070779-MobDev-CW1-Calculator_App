//
//  flashingimage:UIImageView.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 23/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit

class flashingimage_UIImageView: UIImageView {

    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
    
    override func layoutSubviews() {
        
        self.alpha = (randomBetweenNumbers(firstNum: 0.2,secondNum: 1.0))
        
        UIView.animate(withDuration: TimeInterval(randomBetweenNumbers(firstNum: 1.0,secondNum: 2.0)), delay: (TimeInterval(randomBetweenNumbers(firstNum: 0.1,secondNum: 1.0))), options: [.repeat, .autoreverse], animations: {
            self.alpha -= 1.0
            
        })
    }
   
    
}





    

