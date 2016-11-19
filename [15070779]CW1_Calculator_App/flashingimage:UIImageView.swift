//
//  flashingimage:UIImageView.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 23/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit

//rotuine applied to UIImageView will make them animate - by animating their alpha level, alpha level set using random float generated in another swift file

class flashingimage_UIImageView: UIImageView {


    override func layoutSubviews() {
        
        self.alpha = (randomBetweenNumbers(firstNum: 0.2,secondNum: 1.0))
        
        UIView.animate(withDuration: TimeInterval(randomBetweenNumbers(firstNum: 1.0,secondNum: 2.0)), delay: (TimeInterval(randomBetweenNumbers(firstNum: 0.1,secondNum: 1.0))), options: [.repeat, .autoreverse], animations: {
            self.alpha -= 1.0
            
        })
    }
   
    
}





    

